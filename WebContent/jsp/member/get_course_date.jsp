<%@page import="vo.EduVO"%>
<%@page import="dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String e_idx = request.getParameter("c_num");

	EduVO vo = MemberDAO.getEdu(e_idx);
	if(vo != null){
		String startdate = vo.getE_STARTDATE();
		String enddate = vo.getE_ENDDATE();
		int endIndex = startdate.lastIndexOf(' ');
		startdate = startdate.substring(0, endIndex);
		endIndex = enddate.lastIndexOf(' ');
		enddate = enddate.substring(0, endIndex);
		
		out.print(startdate+" ~ "+enddate);
	}else{
		out.print("기한이 없음");
	}
%>