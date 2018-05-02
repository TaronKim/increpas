<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if(obj != null)
	mvo = (MemberVO)session.getAttribute("mvo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련">
<title>인크레파스: 국비무료 취업과정</title>
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
    
    function search(){
		
    	var m_name = document.search_f.m_name.value;
    	if(m_name.trim().length <= 0){
			alert("회원의 이름을 입력하세요!");
			document.search_f.m_name.focus();
			return;
		}
		document.search_f.submit();
    }
    
</script>
</head>
<body>
	<jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="../../jsp/common/left.jsp" ></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="wrap_sub_tab">
						<div class="sub_tab marmT33">

							<div class="search_area">
								<span class="on s_left"><a>회원검색결과</a></span>
								<div class="s_right">
									<form action="search_ok.jsp" method="post" name="search_f">
										<input type="text" name="m_name" class="search_input" /><a href="javascript:search()" class="search_btn">검색</a>
									</form>
								</div>
							</div>
						</div>
	
						<div id="table1">
							<table class="table1">
								<colgroup>
									
								</colgroup>
								
								<thead>
								<tr>
									<th>번호</th>
									<th>아이디</th>
									<th>이름</th>
									<th>생년월일</th>
									<th>성별</th>
									<th>이메일</th>
									<th>전화번호</th>
									<th>우편번호</th>
									<th>주소</th>
									<th>최종학력</th>
									<th>전공</th>
									<th>성적</th>
									<th>회원상태</th>
									<th>삭제/복구</th>
								</tr>
								</thead>
					
								<tbody>
								
								<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%> --%>
	    						<jsp:useBean id="mdao" class="dao.MemberDAO" scope="application"></jsp:useBean>
							<%
							request.setCharacterEncoding("utf-8");
							String m_name = request.getParameter("m_name");
							MemberVO[] ar = null;
							if(m_name !=null){
							ar = MemberDAO.search(m_name);
							}else{
								ar = MemberDAO.search();
							}
							if(ar != null){
							int i=0;
							for(MemberVO vo : ar){
							%>
									<tr>
										<td><%=(ar.length - i++) %></td>
										<td><%=vo.getM_ID() %></td>
										<td><%=vo.getM_NAME() %></td>
										<td><%=vo.getM_BIRTH() %></td>
										<td><%=vo.getM_SEX() %></td>
										<td><%=vo.getM_EMAIL() %></td>
										<td><%=vo.getM_PHONE() %></td>
										<td><%=vo.getM_ZIP() %></td>
										<td><%=vo.getM_ADDR() %></td>
										<td><%=vo.getM_SCHOOL() %></td>
										<td><%=vo.getM_MAJOR() %></td>
										<td><%=vo.getM_GRAD() %></td>
										<td><%=vo.getM_STATUS() %></td>
										
										<%
										if(vo.getM_STATUS().equals("0")){
										%>
										<td>
										<div class="bo_btn">
										<a href="search_del.jsp?m_id=<%=vo.getM_ID() %>&m_status=<%=vo.getM_STATUS()%>">삭제</a>
										</div>
										</td>
										<%
										}else{
										%>
										<td>
										<div class="bo_btn">
										<a href="search_del.jsp?m_id=<%=vo.getM_ID() %>&m_status=<%=vo.getM_STATUS()%>">복구</a>
										</div>
										</td>
										<%
										} 
										%>
										
									</tr>
									<%
												}
									}
									%>
								</tbody>
							</table>
						</div>
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
</body>
</html>