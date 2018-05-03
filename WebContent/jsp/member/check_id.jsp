<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String m_id = request.getParameter("id");
	String id = MemberDAO.chkId(m_id);
	if(id != null){
		out.print("1");
	}else{
		out.print("0");
	}
%>