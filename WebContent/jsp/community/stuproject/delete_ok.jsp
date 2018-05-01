<%@page import="dao.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String c_idx = request.getParameter("c_idx");
	String cPage = request.getParameter("cPage");
	
	boolean ch = ProjectDAO.projectDelete(c_idx);
	
	String path = null;
	if(ch){
		String check = "1";
		path = "we_project.jsp?cPage="+cPage+"&check="+check;
	}else{
		String check = "1";
		path = "project_view.jsp?c_idx="+c_idx+"&cPage="+cPage+"&check="+check;
	}
	
	response.sendRedirect(path);
	
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