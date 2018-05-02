<%@page import="javafx.scene.control.Alert"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String m_id = request.getParameter("m_id");
	String m_status = request.getParameter("m_status");
	
	boolean ch = MemberDAO.delMem(m_id, m_status);
	
	String path = null;
			
	if(ch)
		path = "search_ok.jsp";
	else{
		path = "search_ok.jsp";
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