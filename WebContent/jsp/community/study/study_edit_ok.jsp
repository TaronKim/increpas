<%@page import="dao.StudyDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");



String path = application.getRealPath("/community/study/upload");

MultipartRequest mr = new MultipartRequest(request, path, 10 * 1024 * 1024, "utf-8",
	new DefaultFileRenamePolicy());

	String c_idx = mr.getParameter("c_idx");
 String c_title = mr.getParameter("title");
String c_content = mr.getParameter("content");
String c_page = mr.getParameter("cPage");
//첨부파일 확인
	String fname = null;
	File f = mr.getFile("file");
	//만약! 첨부파일이 없다면 f는 null을 가지고 있다.
	if (f != null) {
		fname = f.getName();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body onload="send()">
	<form action="<%if(StudyDAO.editStudy(c_idx, c_title, c_content, fname)){
		out.println("we_study.jsp");
	}else{
		out.println("study_edit.jsp");
	} %>" method="post">
		<input type="hidden" name="cPage" value="<%=c_page%>" /> <input
			type="hidden" name="c_idx" value="<%=c_idx%>" />
	</form>
	<script type="text/javascript">
		function send(){
			document.forms[0].submit();
		}
	</script>
</body>
</html>