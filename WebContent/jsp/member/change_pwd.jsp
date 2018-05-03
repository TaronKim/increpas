<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%
	request.setCharacterEncoding("utf-8");

	String pwd = request.getParameter("pwd");
	String re_pwd = request.getParameter("re_pwd");

	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if(obj != null){
		mvo = (MemberVO)obj;		
	}
	
	if(mvo != null){
		if(MemberDAO.changePwd(pwd, re_pwd, mvo.getM_id())){
			out.println("success");
		}else{
			out.println("fail");
		}
		
		
	}
	
%>