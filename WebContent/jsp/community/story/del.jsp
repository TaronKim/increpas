
<%@page import="dao.CommDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String c_page = request.getParameter("cPage");
	String c_idx = request.getParameter("c_idx");
	
	boolean ch = CommDAO.delComm(c_idx);
	
	String path = null;
			
	if(ch)
		path = "we_story.jsp?cPage="+c_page;
	else
		path = "story_view.jsp?c_idx="+c_idx+"&cPage="+c_page;
	
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