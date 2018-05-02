<%@page import="dao.JobDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");      

String title  = request.getParameter("u_title"); 
   String name  = request.getParameter("u_name"); 
   String birth= request.getParameter("u_birth");
   String process= request.getParameter("u_process");
   String company  = request.getParameter("u_company");
   String location= request.getParameter("u_location");
   String hiredate  = request.getParameter("u_hiredate");
   
   JobDAO.insertJob(title, name, birth, process, company, location, hiredate);
   
   response.sendRedirect("job_present.jsp");
%>    



