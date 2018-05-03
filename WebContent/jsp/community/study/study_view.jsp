<%@page import="vo.MemberVO"%>
<%@page import="dao.StudyDAO"%>
<%@page import="vo.StudyVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO mvo = null;	
Object obj = session.getAttribute("mvo");
	if(obj != null)
		mvo = (MemberVO)obj;

	String c_idx = request.getParameter("c_idx");
	String c_page = request.getParameter("cPage");


	StudyVO vo = StudyDAO.getStudy(c_idx);

	if (vo != null) {
		String str = null;
		switch(vo.getC_video()){
		case "j": 
			str = "자바프로그래밍강의";
			break;
		case "a": 
			str = "안드로이드강의";
			break;
		case "s": 
			str = "SQL강의";
			break;
		case "w": 
			str = "자바프로그래밍강의";
			break;
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
    
    function study(){
    	document.ff.action = "we_study.jsp";
    	document.ff.submit();
    }
    function edit(){
    	document.ff.action = "study_edit.jsp";
    	document.ff.submit();
    }
    function del(){
    	document.ff.action = "del_study_ok.jsp";
    	document.ff.submit();
    }
</script>
</head>

<body>
 <jsp:include page="../../../jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="../../../jsp/common/left.jsp" ></jsp:include>

	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="../../../images/home.jpg" alt="인크레파스 스터디 자료" /></a><span>커뮤니티</span><span>스터디 자료</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						스터디 자료
						<p>인크레파스 교육생들을 위한 학습자료입니다.</p>
					</div>
					<div class="bo_view_top">
						<%=vo.getC_title() %>
						<p style="font-size:12px; padding-top:10px;">분류 | <%= str %></p>

						<span>작성자 | 관리자</span>
					</div>
					<div class="bo_view">
					<%=vo.getC_content() %>

					</div>
					
					
					<div class="bo_btn">
					<%if(mvo != null && mvo.getM_type().equals("0")){ %>
					<a href="javascript:edit()">수정</a>
					<a href="javascript:del()">삭제</a>
					<%} %>
					<a href="javascript:study()">목록</a>
					</div>
				</div>
				<jsp:include page="../../../jsp/common/right.jsp" ></jsp:include>
			</div>
		</div>
	</div>
	
	<jsp:include page="../../../jsp/common/footer.jsp" ></jsp:include>

	

<form name="ff" method="post">
	<input type="hidden" name="cPage" value= "<%=c_page%>"/>
	<input type="hidden" name="c_idx" value= "<%=vo.getC_idx()%>"/>
</form>

</body>
</html>
<%
	}
%>