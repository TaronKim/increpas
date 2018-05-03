<%@page import="vo.MemberVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="mdao" class="dao.MemberDAO" scope="application"></jsp:useBean>
<%
	String m_id = request.getParameter("id");
	String m_pw = request.getParameter("pwd");
	MemberVO mvo = mdao.login(m_id, m_pw);
	if(mvo != null){
		session.setAttribute("mvo", mvo);
		response.sendRedirect("../../index.jsp");
	}else{
		out.println("<script>");
		out.println("alert('아이디 또는 비밀번호 오류입니다.')");
		out.println("location.href='loginView.jsp'");
		out.println("</script>"); 
		
	}
%>
