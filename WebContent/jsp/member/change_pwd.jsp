<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String pwd = request.getParameter("pwd");
	String re_pwd = request.getParameter("re_pwd");
	
	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if(obj != null){
		mvo = (MemberVO)obj;		
	}
	System.out.println(pwd+re_pwd+mvo.getM_id());
	if(mvo != null){
		if(MemberDAO.changePwd(pwd, re_pwd, mvo.getM_id())){
			out.println("success");
			System.out.println("success");
		}else{
			out.println("fail");
			System.out.println("fail");
		}
		
		
	}
	
%>