
<%@page import="dao.JobDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");      
String j_idx = request.getParameter("j_idx");
String c_page = request.getParameter("cPage");


	//DB에 적용될 파라미터 값들 받기
	String title = request.getParameter("u_title");
	String student_name =  request.getParameter("u_name");
	String birth =  request.getParameter("u_birth");
	String process =  request.getParameter("u_process");
	String company=  request.getParameter("u_company");	
	String location =  request.getParameter("u_location");
	String hiredate=  request.getParameter("u_hiredate");
	
	 boolean ch = JobDAO.editJob(j_idx,title, hiredate, company, student_name, location, birth, process);

	//수정이 되었다면 view_job_situ.jsp로 이동하고, 안되었다면 edit.jsp로 가자
	/* String url = null;
	if(ch)
		url = " view_job_situ.jsp?j_idx="+jidx+"&cPage="+c_page;
	else
		url = "edit.jsp?b_idx="+jidx+"&cPage="+c_page; */
	
	response.sendRedirect("view_job_situ.jsp?j_idx="+j_idx+"&cPage="+c_page);
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>