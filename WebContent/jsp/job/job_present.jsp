<%@page import="vo.MemberVO"%>
<%@page import="vo.JobVO"%>
<%@page import="dao.JobDAO"%>
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
<title>인크레파스: 개발자 취업현황</title>
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
	
	.btn{
	font-size: 17px;
	background-color: white;
	}
</style>


</head>
<body>
   <jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
   <jsp:include page="../../jsp/common/left.jsp" ></jsp:include>
   <div class="main_con">
      <div class="sub_layout">
         <div class="location">
            <a><img src="../../images/home.jpg" alt="인크레파스 취업지원" /></a><span>취업지원</span><span>취업현황</span>
         </div>
         <div class="sub_box1">
         
            <div class="sub_layout2">
               <div class="sub_tit2">
                  취업현황
                  <p>인크레파스를 통해 원하시는 기업에 꼭 취업하시길 바랍니다.
                  
          			 <%
						if(mvo != null && mvo.getM_TYPE().equals("0")){
					%>      
										                   
	<span style="float: right"><input   class="btn" type="button" value="글쓰기" onclick="write_bt()"  />	</span>
				
					<%
						}
					%>
				 </p>
               </div>
               <table class="table1">
                        <colgroup>
                           <col width="70" class="mo_ver"/>
                           <col width="*"/>
                           <col width="90"/>
                           <col width="130" class="mo_ver"/>
                           <col width="130" class="mo_ver"/>
                        </colgroup>
                        
                        <thead>
                           <tr>
                              <th class="mo_ver">번 호</th>
                              <th>제 목</th>
                              <th>교육생</th>
                              <th class="mo_ver">지 역</th>
                              <th class="mo_ver">등록일</th>
                              <%
                           	if(mvo != null && mvo.getM_TYPE().equals("0")){
                           		%>
                           		<th>
                           			삭제여부
                           		</th>
                           		<%
                           	}
                           %>
                              
                           </tr>
                        </thead>
                  
               
                  <tbody>
                     <%                     
                     int nowPage = 1;	//현재 페이지
                     int totalRecord = 0;	//총 게시물의 수
                     int numPerPage = 10;    //한 페이지당 보여질 게시물의 수                   
                     int pagePerBlock = 5;//페이지 묶음(한 블럭당 묶여질 페이지 수)
                     int totalPage = 0;  // 총 페이지 수     
                     
                     
                     if(mvo != null && mvo.getM_TYPE().equals("0")){
                    	 
                    	 totalRecord =JobDAO.getTotalCountAdmin();
                     }else{
                    	 
                     totalRecord =JobDAO.getTotalCount();
                     }
                     totalPage =(int)Math.ceil((double)totalRecord/numPerPage);
                     String c_page =request.getParameter("cPage");
                     
                     if(c_page !=null){
                    	 nowPage =Integer.parseInt(c_page);                    	 
                    	 if(nowPage>totalPage)
                    		 nowPage =totalPage;                    		 
                     }
                     
                     int begin = (nowPage-1)*numPerPage+1;
                     int end = begin+numPerPage-1;
                     
                     int m_type = 1;
                     
                     if(mvo != null){
                    		 m_type = Integer.parseInt(mvo.getM_TYPE());
                     }
                     
                      
                        JobVO[] ar =JobDAO.getList(begin, end, m_type);
                        if(ar !=null && ar.length>0){
                                for(int i=0; i<ar.length; i++){
                        	JobVO vo =ar[i];
                        	
                        	//순차적인 번호를 만들어낸다.
                        	int num = totalRecord - ((nowPage-1)*numPerPage+i);   	   
                     %>
                        <tr>
                           <td class="mo_ver"><%=num %></td>
                           
                           <th><a href="view_job_situ.jsp?j_idx=<%=vo.getJ_idx() %>&cPage=<%=nowPage%>">
                           
                           <%= vo.getJ_title() %></a></th>
                           <td><p><%=vo.getJ_student_name()%></p></td>
                           <td class="mo_ver"><p><%= vo.getJ_location() %></p></td>
                           <td class="mo_ver"><%= vo.getJ_writedate().substring(0, 10) %></td>
                           <%
                           	if(mvo!=null && mvo.getM_TYPE().equals("0")){
                           		%>
                           		<td>
                           			<%if(vo.getJ_status().equals("0")) {
                           				out.println("");
                           			}else{
                           				out.println("삭제 된 글");
                           			}
                           				%>
                           		</td>
                           		<%
                           	}
                           %>
                        </tr>
                  <%
                           }//for의 끝   
                                
                        }else{
                        	%>
                        	   <tr>
                           <td colspan="5">현재 글이 없습니다</td>
                        </tr>
                        	<%
                        }//if문의 끝
                  %>
                  </tbody>
               </table>             
               
               
					<div class="paging">
					   <%
					 //시작페이지 값을 구하자
						int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1; //1
					
						// 마지막 페이지 값 구하기
						int endPage = startPage + pagePerBlock - 1;//6
					
						if (startPage < pagePerBlock) {   
					   %>   
					    <img src="../../images/prev.jpg" />            
					  <%
						}else{
					  %>             
					  	<span><a href="job_present.jsp?cPage=<%=nowPage - pagePerBlock%>"><img src='../../images/prev.jpg'/></a></span>
					  <%
						}
						
						//간혹 endPage의 값이 totalPage의 값을 넘어갈 때가 있을 수 있다.
						//이때 endPage값을 totalPage값으로 변경하자!
						if(endPage > totalPage)
							endPage = totalPage;
						
						for(int i=startPage; i<=endPage; i++){
							
							if(i == nowPage){  
					%>
								<span class="now"><%=i%></span>
					<%
							}else{
					%>
					         <span><a href="job_present.jsp?cPage=<%=i%>"><%=i %></a></span>
					 <%
							}
						}
						
						// endPage가 totalPage보다 작을 경우에만 다음으로 이동할 수 
							//있도록 활성화 시킨다.
						if(endPage <totalPage){
						
					 %>         
					 <span><a href="job_present.jsp?cPage=<%=nowPage + pagePerBlock%>"></a><img src='../../images/next.jpg'/></a></span>
					 <%
						}else{
					 %>
					   <img src="../../images/next.jpg" />       
					<%
						}
					%>          
					      
					</div>
               
               
               
            </div>
            
            <jsp:include page="../../jsp/common/right.jsp"></jsp:include>
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
	function write_bt() {
		location.href="write_form.jsp?cPage=<%=nowPage%>";  <%--nowPage를 받아야 함 . if(c_page !=null){ nowPage =Integer.parseInt(c_page); --%>
		}
	
	</script>
</body>
</html>