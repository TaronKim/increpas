<%@page import="dao.eduDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = application.getRealPath("/jsp/edu/gov_upload");

	MultipartRequest mr = new MultipartRequest(request, path,
			5*1024*1025, "utf-8", new DefaultFileRenamePolicy());
	//이때 첨부파일이 있다면 이미 업로드가 된다.
	
	String E_TITLE = mr.getParameter("title");
	String E_CONTENT = mr.getParameter("content");
	String stryear = mr.getParameter("startyear");
	String strmon = mr.getParameter("startmonth");
	String strday = mr.getParameter("startday");
	String E_STARTDATE = stryear+"/"+strmon+"/"+strday;
	String endyear = mr.getParameter("endyear");
	String endmon = mr.getParameter("endmonth");
	String endday = mr.getParameter("endday");
	String E_ENDDATE = endyear+"/"+endmon+"/"+endday;
	String E_CATEGORY = mr.getParameter("category");
	
	//첨부파일 확인
	File f = mr.getFile("E_IMG_S");
	
	//만약! 첨부파일이 없다면 f는 null을 가지고 있다.
	String E_IMG = "";
	String E_IMG_S = "";
	if(f != null){
		E_IMG = f.getName();
		E_IMG_S = mr.getOriginalFileName("E_IMG_S");
	}
	out.print(E_TITLE);
	out.print(E_CONTENT);
	out.print(E_STARTDATE);
	out.print(E_ENDDATE);
	out.print(E_IMG);
	out.print(E_IMG_S);
	out.print(E_CATEGORY);
	//DB에 저장!!!!!!
	eduDAO.insert(E_TITLE, E_CONTENT, E_STARTDATE, E_ENDDATE, E_IMG, E_IMG_S, E_CATEGORY);
	
	response.sendRedirect("gov_free.jsp");
%>    





