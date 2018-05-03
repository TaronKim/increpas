<%@page import="dao.YeyakDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("utf-8");
	String Y_CON = request.getParameter("Y_CON");
	String Y_DATE = request.getParameter("Y_DATE");
	String Y_NAME = request.getParameter("Y_NAME");
	String num1 = request.getParameter("Y_PHONE1");
	String num2 = request.getParameter("Y_PHONE2");
	String num3 = request.getParameter("Y_PHONE3");
	String Y_PHONE = num1+"-"+num2+"-"+num3;
	String Y_CATEGORY = request.getParameter("Y_CATEGORY");
	String Y_TITLE = request.getParameter("Y_TITLE");
	int cnt = YeyakDAO.insert(Y_CON, Y_DATE, Y_NAME, Y_PHONE, Y_CATEGORY, Y_TITLE);
	if(cnt > 0)
		response.sendRedirect("gov_free.jsp");
	else
		response.sendRedirect("gov_yeyak.jsp");
%>