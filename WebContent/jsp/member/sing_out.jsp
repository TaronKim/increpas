<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//HttpSession에 저장된 mvo를 삭제
	session.removeAttribute("mvo");

	response.sendRedirect("../../index.jsp");
%>  