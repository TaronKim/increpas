<%@page import="vo.ProjectVO"%>
<%@page import="dao.ProjectDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
	

	String c_idx = request.getParameter("c_idx");
	String cPage = request.getParameter("cPage");
	
	ProjectVO pvo = ProjectDAO.projectView(c_idx);

	if(pvo != null){
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

<script type="text/javascript" src="../../../js/jquery.mousewheel.min.js"></script>
<script src="../../../js/slickcustomscroll.js"></script>


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
</head>
<body>
	<jsp:include page="/jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="/jsp/common/left.jsp" ></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="<%=request.getContextPath() %>/images/home.jpg" alt="인크레파스 교육생 프로젝트"></a><span>커뮤니티</span><span>교육생프로젝트</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						교육생 프로젝트
						<p>인크레파스 교육생들의 프로젝트입니다.</p>
					</div>
					<div class="bo_view_top">
						<%=pvo.getC_title() %>
						<span>작성일 | <%=pvo.getC_writedate().substring(0,10) %></span>
					</div>
					<div class="bo_view">
						<%=pvo.getC_content() %>&nbsp;<br>
					</div>
					<div class="bo_btn">
					<%
						if(mvo != null && mvo.getM_type().equals("0")){
					%>
						<a href="project_update.jsp?c_idx=<%=c_idx %>&cPage=<%=cPage%>&e_idx=<%=pvo.getE_idx()%>&category=<%=pvo.getC_category()%>">수정</a>
						<a href="#" class="btn_del">삭제</a>
					<%
						}
					%>
						<a href="we_project.jsp?cPage=<%=cPage%>">목록</a>
					</div>
				</div>
				
				<div class="pop_cont">
					<strong>alert</strong>
					<div class="inner">	
						<p>정말 삭제 하시겠습니까?</p>
						<div class="btn_area">
							<a href="delete_ok.jsp?c_idx=<%=c_idx%>&cPage=<%=cPage%>">삭제</a>
							<a href="#" class="d_close">취소</a>
						</div>
					</div>
				</div>
				<jsp:include page="/jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>

	
	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
<script type="text/javascript" src="../../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select').sSelect({ddMaxHeight: '300px'});
	});
	
	$(".btn_del").click(function(){
		$(".pop_cont").show();
		return false;
	});
	
	$(".pop_cont .d_close").click(function(){
		$(".pop_cont").hide();
		return false;
	});
	
	
</script>

</body>
</html>
<%
	}
%>