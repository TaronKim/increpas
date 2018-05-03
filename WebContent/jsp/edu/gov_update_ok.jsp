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
	String E_IDX = mr.getParameter("E_IDX");
	String E_TITLE = mr.getParameter("title");
	String E_CONTENT = mr.getParameter("content");
	String E_CATEGORY = mr.getParameter("category");
	String stryear = mr.getParameter("stryear");
	String strmon = mr.getParameter("strmon");
	String strday = mr.getParameter("strday");
	String E_STARTDATE = stryear+"/"+strmon+"/"+strday;
	String endyear = mr.getParameter("endyear");
	String endmon = mr.getParameter("endmon");
	String endday = mr.getParameter("endday");
	String E_ENDDATE = endyear+"/"+endmon+"/"+endday;
	
	
	//첨부파일 확인
	String E_IMG = null;
	String E_IMG_S = null;
	File f = mr.getFile("E_IMG_S");
	
	//만약! 첨부파일이 없다면 f는 null을 가지고 있다.

	if(f != null){
		E_IMG = f.getName();
		E_IMG_S = mr.getOriginalFileName("E_IMG_S");
	}
	//System.out.print(E_IDX+"+"+E_TITLE+"+"+E_CONTENT+"+"+E_CATEGORY+"+"+E_STARTDATE+"+"+E_ENDDATE+"+"+E_IMG+"+"+E_IMG_S);
	boolean ch = eduDAO.update(E_IDX, E_TITLE, E_CONTENT, E_IMG, E_IMG_S, E_STARTDATE, E_ENDDATE, E_CATEGORY);
	String url = null;
	if(ch)
		url = "gov_free.jsp";
	else
		url = "gov_update.jsp";
	response.sendRedirect(url);
%>    

