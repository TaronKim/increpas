<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//이미지를 저장할 위치(upload)를 절대경로화 시킨다.
	String path = application.getRealPath("/jsp/edu/gov_save_img");

	//첨부된 이미지파일을 받기위해 필요한 객체 생성
	MultipartRequest mr = new MultipartRequest(
		request, path, 1024*1024*5, "utf-8",
		new DefaultFileRenamePolicy());
	
	String E_IMG = null;
	File f = mr.getFile("send_img");
	if(f != null) //이미지가 왔다는 의미다.
		E_IMG = f.getName();
%>    
{
	"url":"<%=request.getContextPath() %>/jsp/edu/gov_save_img/<%=E_IMG %>"
}

