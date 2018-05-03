<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="dao.YeyakDAO"%>
<%@page import="vo.YeyakVO"%>
<%@page import="vo.MemberVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련"/>
<title>인크레파스: 예약 현황</title>
<link rel="stylesheet" type="text/css" href="../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../css/common.css"/>

<script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<!-- <script type="text/javascript" src="../../js/jquery.min.js"></script> -->
<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>
<script src="../../js/slickcustomscroll.js"></script>


<script type="text/javascript">
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
        
        $("#tab1, #tab2").css("cursor","pointer");
        
        $("#tab1").bind("click",function(){
           $("#c_code").val("1");
           
         $("#table2").css("display","none");
         $("#table1").css("display","block");
         
         $("#tab2").attr("class","");
         $(this).attr("class","on");
      });
        
        $("#tab2").bind("click",function(){
           $("#c_code").val("2");
           
           $("#table1").css("display","none");
         $("#table2").css("display","block");
         
         $("#tab1").attr("class","");
         $(this).attr("class","on");
      });
    });    
</script>


<style type="text/css">
   table{
      border-collapse: collapse;      
      width: 500px;
      
   }
   table th,table td{      
      
      padding: 4px;
   }
   
      table thead tr{      
     
      background-color: #eee;
   }   

	.disable {
	    padding:3px 7px;	  
	    color:silver;
	}
	
	.now {
	 color:#91B7EF;font-weight:bold
	   
	}
</style>


</head>
<body>
   <jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
   <jsp:include page="../../jsp/common/left.jsp" ></jsp:include>
   <div class="main_con">
      <div class="sub_layout">
         <div class="location">
            <a><img src="../../images/home.jpg" alt="인크레파스 취업지원" /></a><span>고객센터</span><span>예약조회</span>
         </div>
         <div class="sub_box1">
            <div class="sub_layout2">
               <div class="sub_tit2">
                 예약조회
                  <p>예약조회
				 </p>
               </div>
               <table class="table1">
                        <colgroup>
                           <col width="70px"/>
                           <col width="150px"/>
                           <col width="90px"/>
                           <col width="100px"/>
                           <col width="95px"/>
                           <col width="100px"/>
                        </colgroup>
                        
                        <thead>
                           <tr>
                           	  <th>상담 종류</th>
                              <th>관심 과정</th>
                              <th>신청자 명</th>
                              <th>연락처</th>
                              <th>예약 일</th>
                              <th>관심 교육</th>  
                           </tr>
                        </thead>                               
                  <tbody>
                   <%	
		               	Date keyStartDate; // 삭제 시작일
						Date currentDate; // 현재날짜 Date
						String oTime = ""; // 현재날짜
						String compareVal = "N";
						SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
						Date currentTime = new Date();
						oTime = mSimpleDateFormat.format ( currentTime ); //현재시간 (String)
		              	String Y_TITLE = request.getParameter("E_TITLE");
		              	YeyakVO[] ar = YeyakDAO.select(Y_TITLE);
		              	if(ar != null){
		              		for(YeyakVO yvo : ar){
		              			keyStartDate = mSimpleDateFormat.parse(yvo.getY_DATE());
								currentDate =  mSimpleDateFormat.parse( oTime );
								int compare = currentDate.compareTo(keyStartDate);
		              			if(compare > 0){
                  %>                  
                        <tr>
                           <td><%if(yvo.getY_CON().equals("1")){
                        	   %>방문<%
                          	 }else{
								%>전화<%}%></td>                      
                           <td><%=yvo.getY_TITLE()%></td>
                           <td><%=yvo.getY_NAME()%></td>
                           <td><%=yvo.getY_PHONE()%></td>
                           <td>예약일 초과</td>
                           <td><%=yvo.getY_CATEGORY()%></td>
                        </tr>
                        <%	
		              			}else if(compare <= 0){
		              				%>
		              				<tr>
			                           <td><%if(yvo.getY_CON().equals("1")){
			                        	   %>방문<%
			                          	 }else{
											%>전화<%}%></td>                      
			                           <td><%=yvo.getY_TITLE()%></td>
			                           <td><%=yvo.getY_NAME()%></td>
			                           <td><%=yvo.getY_PHONE()%></td>
			                           <td><%=yvo.getY_DATE().substring(0,10) %></td>
			                           <td><%=yvo.getY_CATEGORY()%></td>
                       				 </tr>
		              				<%
		              			}
		              		}
		              	}else if(ar == null){
		              		%>
		              		<tr>
		              		<td colspan="6">신청자가 없습니다</td>
		              		</tr>
		              		<%
		              	}
                        %>
                  </tbody>
               </table>             
            </div>
            <jsp:include page="../../jsp/common/right.jsp"></jsp:include>
            <a href="<%=request.getContextPath()%>/jsp/edu/gov_free.jsp" class="btn_style1">목록</a> 
         </div>
      </div>
   </div>   
   <jsp:include page="../../jsp/common/footer.jsp"></jsp:include>
<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
      $('select').sSelect({ddMaxHeight: '300px'});
   });
</script>   
	<script type="text/javascript">	
	</script>
</body>
</html>