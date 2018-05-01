<%@page import="org.apache.catalina.ha.backend.Sender"%>
<%@page import="dao.ProjectDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = application.getRealPath("/upload");

	MultipartRequest mr = new MultipartRequest(request, path,
			5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	//이때 첨부파일이 있다면 이미 업로드가 된다.
	
	String title = mr.getParameter("title");
	String writer = mr.getParameter("writer");
	String content = mr.getParameter("content");
	String category = mr.getParameter("category");
	String e_idx = mr.getParameter("eidx");

	
	//첨부파일 확인
	File f = mr.getFile("file");
	
	//만약! 첨부파일이 없다면 f는 null을 가지고 있다.
	String fname = "";
	//String oname = "";
	if(f != null){
		fname = f.getName();
		//oname = mr.getOriginalFileName("file");
	}
	
	//현재 접속자의 ip알아내기
	//String ip = request.getRemoteAddr();
	
	//DB에 저장!!!!!!
	boolean chk = ProjectDAO.insertProject(title, content, fname, writer, e_idx);
	
	if(chk){
		response.sendRedirect("we_project.jsp");
	}else{
		response.sendRedirect("project_write.jsp");
	}
	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <form action="we_project.jsp" method="post" name="f">
		<%
			if(chk){
		%>
				<input type="hidden" name="e_idx" value="<%=e_idx %>" />
				<input type="hidden" name="check" value="0" />
		<%
			}else{
		%>		
				<input type="hidden" name="check" value="1" />
		<%		
			}
		%>
	</form> --%>
	
	<!-- <script type="text/javascript">
		window.onload = function(){
			document.f.submit();
		}
	</script> -->
</body>
</html>