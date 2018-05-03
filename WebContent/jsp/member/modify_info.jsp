<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="mvo" class="vo.MemberVO" scope="page" />
<jsp:setProperty property="*" name="mvo"/>
<%


	System.out.println(mvo.getM_phone());

	Object obj = session.getAttribute("mvo");
	MemberVO svo = null;
	if(obj != null)
		svo = (MemberVO)obj;
	
	if(svo != null){
		if(MemberDAO.editMem(mvo)){
			mvo.setChk("0");
			session.setAttribute("mvo", mvo);
		}else{
			svo.setChk("1");
		}
		System.out.println(mvo.getChk());
	response.sendRedirect("mypage.jsp");
	}
%>    
    
    
