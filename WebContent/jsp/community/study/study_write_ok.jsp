<%@page import="dao.StudyDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = application.getRealPath("/community/study/upload");

	MultipartRequest mr = new MultipartRequest(request, path,
			10*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	//이때 첨부파일이 있다면 이미 업로드가 된다.
	String c_idx = request.getParameter("c_idx");
	
	String subject = mr.getParameter("title");
	String m_id = mr.getParameter("m_id");
	String content = mr.getParameter("content");
	String c_video = mr.getParameter("c_video");
	
	//첨부파일 확인
	File f = mr.getFile("file");
	
	//만약! 첨부파일이 없다면 f는 null을 가지고 있다.
	String fname = "";
	if(f != null){
		fname = f.getName();
	}
	
	//현재 접속자의 ip알아내기
	String ip = request.getRemoteAddr();
	
	//DB에 저장!!!!!!
	if(StudyDAO.insertStudy(subject, m_id, content, c_video, fname)){
		response.sendRedirect("we_study.jsp");
	}else{
		%>
		<form action="study_view.jsp" method="post">
			<input type="hidden" name="c_idx" value="<%=c_idx%>"/>
		</form>
		<%
	}	
%>    



