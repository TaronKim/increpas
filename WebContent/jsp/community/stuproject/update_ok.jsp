<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="dao.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = application.getRealPath("/community/stuproject/upload");

	MultipartRequest mr = new MultipartRequest(request, path,
			5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	//이때 첨부파일이 있다면 이미 업로드가 된다.
	
	String c_idx = mr.getParameter("c_idx");
	String title = mr.getParameter("title");
	String content = mr.getParameter("content");
	String e_idx = mr.getParameter("eidx");
	String f_name = mr.getParameter("fname");

	
	//첨부파일 확인
	File f = mr.getFile("file");
	
	//만약! 첨부파일이 없다면 f는 null을 가지고 있다.
	String fname = "";
	//String oname = "";
	if(f != null){
		fname = f.getName();
		//oname = mr.getOriginalFileName("file");
	}else{
		fname = f_name;
	}
	
	//현재 접속자의 ip알아내기
	//String ip = request.getRemoteAddr();
	
	//DB에 저장!!!!!!
	boolean chk = ProjectDAO.projectUpdate(c_idx, title, content, fname, e_idx);
	
	if(chk){
		response.sendRedirect("we_project.jsp");
	}else{
		response.sendRedirect("project_update.jsp");
	}
	
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