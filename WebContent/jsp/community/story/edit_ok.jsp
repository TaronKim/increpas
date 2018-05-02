<%@page import="dao.CommDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//파일이 저장될 곳을 절대경로화 시킨다.
	String path = application.getRealPath("/upload");

	MultipartRequest mr = new MultipartRequest(request, path, 
			5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	
	// DB에 적용될 파라미터 값들 받기
	String c_idx = mr.getParameter("c_idx");
	String c_page = mr.getParameter("cPage");
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	String process = mr.getParameter("process");
	String content = mr.getParameter("content");
	
	//첨부파일 확인
	String fname = null;
	String oname = null;
	File f = mr.getFile("s_file");
	
	if(f != null){
		fname = f.getName();
		oname = mr.getOriginalFileName("s_file");
	} 

	boolean ch = CommDAO.editComm(c_idx, title, fname, content);
	
	//수정이 되었다면 view.jsp로 이동하고, 안되었다면 edit.jsp로 가자
	String url = null;
	if(ch)
		url = "story_view.jsp?c_idx="+c_idx+"&cPage="+c_page;
	else
		url = "edit.jsp?c_idx="+c_idx+"&cPage="+c_page;
	
	response.sendRedirect(url);
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