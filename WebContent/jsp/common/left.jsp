<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="dao.eduDAO"%>
<%@page import="vo.EduVO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%    
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
%>
<div class="customer">
		<img src="<%=request.getContextPath() %>/images/customer.jpg" alt="인크레파스 전화" />
		<div id="katalk_div">
			<a href="http://pf.kakao.com/_UrkxcV/chat">
			<img src="<%=request.getContextPath() %>/images/KaTalk.jpg" alt="카톡상담"/>
			</a>
			<h1>추천과정</h1>
		</div>
		
	</div>
	
	<div class="left_menu">
		<div rel="scrollcontent1">
			<div id="paragraph-A">
				
  
    <ul class="left_menu_list">
    	<%	
								EduVO[] ar = eduDAO.getList();
							 	int cnt = 0;
							 	Date keyStartDate; // 삭제 시작일
							 	Date currentDate; // 현재날짜 Date
							 	String oTime = ""; // 현재날짜
							 	String compareVal = "N";
							 	SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy-MM-dd", Locale.KOREA );
							 	Date currentTime = new Date();
							 	oTime = mSimpleDateFormat.format ( currentTime ); //현재시간 (String)
							 		if(ar != null && ar.length > 0){
										for(EduVO evo : ar){
											keyStartDate = mSimpleDateFormat.parse(evo.getE_STARTDATE());
											currentDate =  mSimpleDateFormat.parse( oTime );
											int compare = currentDate.compareTo(keyStartDate);
											if(evo.getE_CATEGORY().equals("1") && evo.getE_STATUS().equals("0") && compare <= 0){
												cnt++;
												%>
												<li>
												<a href="<%=request.getContextPath()%>/jsp/edu/gov_view.jsp?E_IDX=<%=evo.getE_IDX()%>">
												<div class="img"><img src="<%=request.getContextPath()%>/jsp/edu/gov_upload/<%=evo.getE_IMG()%>" width="50px" height="auto" alt="" /></div>
												<h1><%=evo.getE_TITLE() %></h1>
												<p><%=evo.getE_STARTDATE().substring(0,10) %></p>
												</a>
												</li>
												<%
											}
										}
							 		}
							 		if(cnt == 0){
										%>
									<tr>
										<td colspan="3" class="empty">
											현재 등록된 국비지원(국가기간)과정이 없습니다.
										</td>
									</tr>
									<%
									
									}
							 	
									%>
		
	
		
	</ul>
			</div>   
		</div>
	</div>
