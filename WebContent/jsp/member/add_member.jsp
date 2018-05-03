<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

String m_id = request.getParameter("m_id");
String m_pwd = request.getParameter("m_pwd");
String name = request.getParameter("name");
String birthday = request.getParameter("birthday");
String gender = request.getParameter("gender");
String[] email = request.getParameterValues("email");
String[] phone = request.getParameterValues("phone");
String post_num = request.getParameter("post_num");
String addr = request.getParameter("addr");
String school = request.getParameter("school");
String major = request.getParameter("major");
String classify = request.getParameter("classify");
String c_num = request.getParameter("c_num");
if(MemberDAO.addMem(m_id, m_pwd, name, birthday, gender, email, phone, post_num, addr, school, major, classify, c_num)){
response.sendRedirect("registry.jsp?chk=0");
}else{
	response.sendRedirect("registry.jsp?chk=1");
}
%>
