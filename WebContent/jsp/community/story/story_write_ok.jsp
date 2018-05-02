<%@page import="dao.CommDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = application.getRealPath("/upload");

	MultipartRequest mr = new MultipartRequest(request, path,
			5*1024*1025, "utf-8", new DefaultFileRenamePolicy());
	//이때 첨부파일이 있다면 이미 업로드가 된다.
	
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	String process = mr.getParameter("process");
	String content = mr.getParameter("content");
	
	//첨부파일 확인
	File f = mr.getFile("s_file");
	
	//만약! 첨부파일이 없다면 f는 null을 가지고 있다.
	String fname = "";
	String oname = "";
	if(f != null){
		fname = f.getName();
		oname = mr.getOriginalFileName("s_file");
	}
	
	
	//DB에 저장!!!!!!
	CommDAO.insert(title, fname, null, writer, content);
	
	response.sendRedirect("we_story.jsp");
%>    





