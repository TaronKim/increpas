<%@page import="vo.EduVO"%>
<%@page import="dao.eduDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%    
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
%>
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
<script type="text/javascript" src="../../js/jquery.min.js"></script>
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
</head>
<body>
	<jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="../../jsp/common/left.jsp" ></jsp:include>
	<div class="main_con">

					<div class="sub_tit2">
						국비무료취업과정
						<p>정부가 지원하는 취업을 위한 교육입니다.</p>
					</div>
					<%
					String E_IDX = request.getParameter("E_IDX");
					EduVO evo = eduDAO.select(E_IDX);
					%>
					<div class="sub_tit3">
						<img src="<%=evo.getE_IMG()%>" alt=""><%=evo.getE_TITLE() %>
						&nbsp;&nbsp;
						<div id="btn_area"><div class="hide"><a href="counsel.inc" id="counsel_btn2"></a></div>
						</div>
					</div>
					<div class="sub_box5">
						<div class="sub_box5_1">
							<%=evo.getE_TITLE() %><span><%=evo.getE_TITLE() %></span>
						</div>
						<div class="sub_box5_2">
							<%=evo.getE_CONTENT() %>
						</div>
							개강일:<%=evo.getE_STARTDATE().substring(0,10)%><br/>
							종료일:<%=evo.getE_ENDDATE().substring(0,10) %>
						</div>

					<div id="btn_area" class="wrap_btn button">
						<%
						if(obj == null){
						%>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_free.jsp" class="btn_style1">목록</a>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_yeyak.jsp?E_IDX=<%=evo.getE_IDX()%>" class="btn_style2">상담 예약</a>
						<%
						}else if(mvo.getM_TYPE().equals("0")){
							if(evo.getE_STATUS().equals("0")){
						%>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_free.jsp" class=btn_style1>목록</a>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_update.jsp?E_IDX=<%=evo.getE_IDX()%>" class="btn_style1">수정</a>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_del.jsp?E_IDX=<%=evo.getE_IDX()%>" class="btn_style1">삭제</a>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_yeyak.jsp" class="btn_style2">예약 조회</a>
						<%
							}else if(evo.getE_STATUS().equals("1")){
							%>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_free.jsp" class="btn_style1">목록</a>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_update.jsp?E_IDX=<%=evo.getE_IDX()%>" class="btn_style1">수정</a>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_restore.jsp?E_IDX=<%=evo.getE_IDX()%>" class="btn_style1">복구</a>
							<a href="<%=request.getContextPath()%>/jsp/edu/gov_yeyak.jsp" class="btn_style2">예약 조회</a>
							<%
						}
						}
						%>
					</div>
				</div>
				<jsp:include page="../../jsp/common/right.jsp"></jsp:include>
	<jsp:include page="../../jsp/common/footer.jsp"></jsp:include>

<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select').sSelect({ddMaxHeight: '300px'});
	});
</script>
</body>
</html>