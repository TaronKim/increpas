<%@page import="vo.MemberVO"%>
<%@page import="dao.CommDAO"%>
<%@page import="vo.CommVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String c_idx = request.getParameter("c_idx");
	String c_page = request.getParameter("cPage");
	
	CommVO vo = CommDAO.getComm(c_idx);
	
	if(vo != null){
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
	//HttpSession이 session.getAttribute("mvo");로 얻기
	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if(obj != null)
		mvo = (MemberVO)session.getAttribute("mvo");
%>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련">
<title>인크레파스: 개발자로 성장하는 학교</title>

<link rel="stylesheet" type="text/css" href="../../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../../css/common.css"/>

<script src="../../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->


<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.mousewheel.min.js"></script>

<script src="../../../js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
    });    
</script>
</head>

<body>

<jsp:include page="../../../jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="../../../jsp/common/left.jsp" ></jsp:include> 
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="../../../images/home.jpg" alt="인크레파스 우리들의 이야기" /></a><span>커뮤니티</span><span>우리들의이야기</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						우리들의이야기
						<p>인크레파스 교육생들의 소식과 생각들을 공유합니다.</p>
					</div>
					<div class="bo_view_top">
						<%=vo.getC_title() %>
						<span>작성일 | <%=vo.getC_writedate() %></span>
					</div>
					<div class="bo_view">
					<%=vo.getC_content() %>
					</div>

						
					</div>
					<div class="bo_btn">
						<% 
							if(mvo !=null){
							if(mvo.getM_TYPE().equals("0")){
						%>
						<a href="edit.jsp?nowPage=<%=c_page %>&c_idx=<%=vo.getC_idx()%>">수정</a>
						<a href="del.jsp?c_idx=<%=vo.getC_idx() %>&cPage=<%=c_page%>">삭제</a>
							<% } 
						}
						%>
	
						<a href="we_story.jsp?cPage=<%=c_page %>">목록</a></div>
				</div>
				<jsp:include page="../../../jsp/common/right.jsp" ></jsp:include>
			</div>
			
		</div>

	<jsp:include page="../../../jsp/common/footer.jsp" ></jsp:include>

<script type="text/javascript" src="../../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('select').sSelect({ddMaxHeight: '300px'});
});
</script>


</body>
</html>
<%
	}
%>