<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="wrap">
<%    
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
%>
<div class="top">
	<input type="hidden" id="m_chk" value="<% if(mvo != null) out.print(mvo.getM_TYPE());%>"/>
	<a href="index.inc" class="logo"><img src="<%=request.getContextPath() %>/images/logo.png" alt="인크레파스 로고" /></a>
	<a href="#" class="m_menu"><img src="<%=request.getContextPath() %>/images/m_menu.png" alt="인크레파스 메뉴"></a>
	<div class="top_menu">
		<a href="#">교육센터 소개</a><a href="#" class="on">교육과정</a><a href="#">고객센터</a><a href="#">커뮤니티</a><a href="#">취업지원</a>
	</div>
	<div class="top_menu_r">

				<a href="index.jsp"><img src="<%=request.getContextPath() %>/images/top_btn1.png" alt="인크레파스 융합SW교육센터"/>HOME</a>
		
		<%
			if(obj == null){
		%>
			<a href="<%=request.getContextPath() %>/jsp/member/loginView.jsp"><img src="<%=request.getContextPath() %>/images/top_btn2.png" alt="인크레파스 로그인" />로그인</a>
		<%
			}else{
		%>
			<a href="<%=request.getContextPath() %>/jsp/member/sign_out.jsp"><img src="<%=request.getContextPath() %>/images/top_btn2.png" alt="인크레파스 로그아웃" />로그아웃</a>
		<%
			}		
		%>
		
		<%
			if(obj == null){
				%>
				<a href="registry.inc"><img src="<%=request.getContextPath() %>/images/top_btn3.png" alt="인크레파스 회원가입" />회원가입</a>
		<%		
			}else{
				if(mvo.getM_TYPE().equals("0")){
		 %>
		
					<a href="<%=request.getContextPath() %>/jsp/member/search_ok.jsp"><img src="<%=request.getContextPath() %>/images/top_btn3.png" alt="인크레파스 융합SW교육센터" />회원검색</a>
		<%
				}else{
					 %>
					<a href="registry.inc"><img src="<%=request.getContextPath() %>/images/top_btn3.png" alt="인크레파스 회원가입" />회원가입</a>
					<%
				}
			}
				
		%>
	
	
	</div>
	<div class="sub">
		<div class="sub_1">
			<a href="greet.inc">인사말</a><a href="story.inc">연혁</a><a href="facility.inc">교육시설</a><a href="professor.inc">교수소개</a><a href="street.inc">오시는 길</a>
		</div>
		<div class="sub_1">
			<a href="gov_free.inc">국비무료취업과정</a><a href="gov_worker.inc">일반/재직자과정</a><a href="custom_tailor.inc">기업맞춤교육과정</a>
		</div>
		<div class="sub_1">
			<a href="free.inc">국비무료교육</a><a href="counsel.inc">상담예약</a><a href="guide.inc">수강신청안내</a><a href="notice.inc">개발자 칼럼과 정보</a>
		</div>
		<div class="sub_1">
			<a href="<%=request.getContextPath() %>/jsp/community/story/we_story.jsp">우리들의이야기</a><a href="<%=request.getContextPath() %>/jsp/community/stuproject/we_project.jsp?">교육생프로젝트</a><a href="we_study.inc">스터디자료</a>
		</div>
		<div class="sub_1">
			<a href="job_process.inc">취업지원절차</a><a href="job_present.inc">취업현황</a><a href="job_offer.inc">채용및구인의뢰</a>
		</div>
	</div>
</div>   


