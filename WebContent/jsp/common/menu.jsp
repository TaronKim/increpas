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
	<input type="hidden" id="m_chk" value="<% if(mvo != null) out.print(mvo.getM_type());%>"/>
	<a href="<%=request.getContextPath() %>/index.jsp" class="logo"><img src="<%=request.getContextPath() %>/images/logo.png" alt="인크레파스 로고" /></a>
	<a href="#" class="m_menu"><img src="<%=request.getContextPath() %>/images/m_menu.png" alt="인크레파스 메뉴"></a>
	<div class="top_menu">
		<a href="#">교육센터 소개</a><a href="#" class="on">교육과정</a><a href="#">고객센터</a><a href="#">커뮤니티</a><a href="#">취업지원</a>
	</div>
	<div class="top_menu_r">

				<a href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath() %>/images/top_btn1.png" alt="인크레파스 융합SW교육센터"/>HOME</a>
		
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
				<a href="<%=request.getContextPath() %>/jsp/member/registry.jsp"><img src="<%=request.getContextPath() %>/images/top_btn3.png" alt="인크레파스 회원가입" />회원가입</a>
		<%		
			}else{
				if(mvo.getM_type().equals("0")){
		 %>
		
					<a href="<%=request.getContextPath() %>/jsp/member/search_ok.jsp"><img src="<%=request.getContextPath() %>/images/top_btn3.png" alt="인크레파스 융합SW교육센터" />회원검색</a>
		<%
				}else{
					 %>
					<a href="<%=request.getContextPath() %>/jsp/member/mypage.jsp"><img src="<%=request.getContextPath() %>/images/top_btn3.png" alt="인크레파스 마이페이지" />마이페이지</a>
					<%
				}
			}
				
		%>
	
	
	</div>
	<div class="sub">
		<div class="sub_1">
			<a href="<%=request.getContextPath()%>/jsp/intro/greet.jsp">인사말</a><a href="<%=request.getContextPath()%>/jsp/intro/story.jsp">연혁</a><a href="<%=request.getContextPath()%>/jsp/intro/facility.jsp">교육시설</a><a href="<%=request.getContextPath()%>/jsp/intro/professor.jsp">교수소개</a><a href="<%=request.getContextPath()%>/jsp/intro/street.jsp">오시는 길</a>
		</div>
		<div class="sub_1">
			<a href="<%=request.getContextPath()%>/jsp/edu/gov_free.jsp">국비무료취업과정</a>
		</div>
		<div class="sub_1">
			<a href="<%=request.getContextPath()%>/jsp/customer/free.jsp">국비무료교육</a><a href="<%=request.getContextPath()%>/jsp/customer/guide.jsp">수강신청안내</a><a href="notice.inc">개발자 칼럼과 정보</a>
		</div>
		<div class="sub_1">
			<a href="<%=request.getContextPath() %>/jsp/community/story/we_story.jsp">우리들의이야기</a><a href="<%=request.getContextPath() %>/jsp/community/stuproject/we_project.jsp?">교육생프로젝트</a><a href="<%=request.getContextPath()%>/jsp/community/study/we_study.jsp">스터디자료</a>
		</div>
		<div class="sub_1">
			<a href="<%=request.getContextPath() %>/jsp/job/job_process.jsp">취업지원절차</a><a href="<%=request.getContextPath() %>/jsp/job/job_present.jsp">취업현황</a>
		</div>
	</div>
</div>   


