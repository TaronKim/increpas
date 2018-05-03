<%@page import="dao.StudyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String c_page = request.getParameter("cPage");
	String c_idx = request.getParameter("c_idx");
	
	
	if(StudyDAO.delStudy(c_idx)){
		response.sendRedirect("we_study.jsp?cPage="+c_page);
	}else{
		response.sendRedirect("study_view.jsp?c_idx="+c_idx);
	}
%>