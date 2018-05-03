<%@page import="dao.eduDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String c_page = request.getParameter("cPage");
	String E_IDX = request.getParameter("E_IDX");


	boolean ch = eduDAO.restore(E_IDX);
	
	//String path = null;
	/* if(ch)
		path = "list.jsp?cPage="+c_page;
	else
		path = "view.jsp?b_idx="+E_IDX+"&cPage="+c_page;
	
 */	response.sendRedirect("gov_free.jsp");
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