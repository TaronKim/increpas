<%@page import="dao.MemberDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String c_value = request.getParameter("c_value");
	String keyword = request.getParameter("keyword");

	//HttpSession이 session.getAttribute("mvo");로 얻기
	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if (obj != null)
		mvo = (MemberVO) obj;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description"
	content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련">
<title>인크레파스: 국비무료 취업과정</title>
<link rel="stylesheet" type="text/css" href="../../css/main.css" />
<link rel="stylesheet" type="text/css" href="../../css/common.css" />

<script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->


<!-- <script type="text/javascript" src="../../js/jquery.min.js"></script> -->
<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>

<script src="../../js/slickcustomscroll.js"></script>


<script type="text/javascript">
	$(document).ready(function() {
		$("div[rel='scrollcontent1']").customscroll({
			direction : "vertical"
		});

		$("#tab1, #tab2").css("cursor", "pointer");

		$("#tab1").bind("click", function() {
			$("#c_code").val("1");

			$("#table2").css("display", "none");
			$("#table1").css("display", "block");

			$("#tab2").attr("class", "");
			$(this).attr("class", "on");
		});

		$("#tab2").bind("click", function() {
			$("#c_code").val("2");

			$("#table1").css("display", "none");
			$("#table2").css("display", "block");

			$("#tab1").attr("class", "");
			$(this).attr("class", "on");
		});
	});

	function search() {
		
		document.search_f.submit();
	}
</script>
</head>
<body>
	<%
		int nowPage = 1;//현재 페이지값
		int totalRecord = 0; //총 게시물의 수
		int numPerPage = 10;//한 페이지당 보여질 게시물의 수 

		int pagePerBlock = 5; //페이지 묶음(한블럭당 5개 )
		int totalPage = 0; //총 페이지 수

		//totalRecord = MemberDAO.getTotalCount();
		if (mvo != null) {
			if (c_value != null && keyword != null && !keyword.equals("") && !keyword.contains("null")) {
				totalRecord = MemberDAO.sGetTotalCount(c_value, keyword);
			} else {
				totalRecord = MemberDAO.getTotalCount();
			}
		} else {

			if (c_value != null && keyword != null && !keyword.equals("") && !keyword.contains("null")) {
				totalRecord = MemberDAO.sGetTotalCount(c_value, keyword);
			} else {
				totalRecord = MemberDAO.getTotalCount();
			}
		} 

		//math 클래스에 ceil 함수는 결과인 소숫점을 가장 가까운 높은수로 올림한다 
		totalPage = (int) Math.ceil((double) totalRecord / numPerPage);

		String c_page = request.getParameter("cPage");
		if (c_page != null) {
			nowPage = Integer.parseInt(c_page);
		}
		//현재 페이지 값이 더해지면서 총페이지 값을 넘어가는 경우가 있으니 마지막 페이지 값으로 수정해준다
		if (nowPage > totalPage) {
			nowPage = totalPage;
		}
	%>
	<jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="../../jsp/common/left.jsp"></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="wrap_sub_tab">
						<div class="sub_tab marmT33">

							<div class="search_area">
								<span class="on wrap_left"><a>회원검색결과</a></span>
								<form action="search_ok.jsp" method="post" name="search_f">
									<div class="wrap_right">
										<div class="select_type1 w160">
											<select name="c_value">
												<option value="0">이름</option>
												<option value="1">아이디</option>
												<option value="2">이메일</option>
											</select>
										</div>
										<input type="text" name="keyword" class="search_input"
											style="width: 167px" /> <a href="javascript:search()"
											class="search_btn">검색</a>
									</div>
								</form>
							</div>
						</div>

						<div id="table1">
							<table class="table1">
								<colgroup>

								</colgroup>

								<thead>
									<tr>
										<th>번호</th>
										<th>아이디</th>
										<th>이름</th>
										<th>생년월일</th>
										<th>성별</th>
										<th>이메일</th>
										<th>전화번호</th>
										<th>우편번호</th>
										<th>주소</th>
										<th>최종학력</th>
										<th>전공</th>
										<th>성적</th>
										<th>회원상태</th>
										<th>삭제/복구</th>
									</tr>
								</thead>

								<tbody>

									<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%> --%>
									
									<%

										int begin = (nowPage - 1) * numPerPage + 1;

										int end = begin + numPerPage - 1;
										//총 게시물의 수
										//MemberVO[] ar = MemberDAO.search2(begin, end); //현재페이지 값을 받아야 begin과 end 값을 구할수 있다
										MemberVO[] ar = null;
										if (c_value != null && keyword != null && !keyword.equals("") && !keyword.contains("null")) {

											ar = MemberDAO.search(begin, end, c_value, keyword);

										} else {

											ar = MemberDAO.search2(begin, end);
										} 

										if (ar != null && ar.length > 0) {
											for (int i = 0; i < ar.length; i++) {
												MemberVO vo = ar[i];
												//순차적인 번호를 만들어낸다 . 그 페이지에서 높은값부터
												int num = totalRecord - ((nowPage - 1) * numPerPage + i);
									%>
									<tr>
										<td><%=(ar.length - i++)%></td>
										<td><%=vo.getM_id()%></td>
										<td><%=vo.getM_name()%></td>
										<td><%=vo.getM_birth()%></td>
										<td><%=vo.getM_sex()%></td>
										<td><%=vo.getM_email()%></td>
										<td><%=vo.getM_phone()%></td>
										<td><%=vo.getM_zip()%></td>
										<td><%=vo.getM_addr()%></td>
										<td><%=vo.getM_school()%></td>
										<td><%=vo.getM_major()%></td>
										<td><%=vo.getM_grad()%></td>
										<td><%=vo.getM_status()%></td>

										<%
											if (vo.getM_status().equals("0")) {
										%>
										<td>
											<div class="bo_btn">
												<a
													href="search_del.jsp?m_id=<%=vo.getM_id()%>&m_status=<%=vo.getM_status()%>">삭제</a>
											</div>
										</td>
										<%
											} else {
										%>
										<td>
											<div class="bo_btn">
												<a
													href="search_del.jsp?m_id=<%=vo.getM_id()%>&m_status=<%=vo.getM_status()%>">복구</a>
											</div>
										</td>
										<%
											}
										%>

									</tr>
									<%
										}
											
										}else{
									%>		
											<tr>
												<td colspan="13">현재 등록된 게시물이 없습니다.</td>
											</tr>
									<%		
										}
									%>
								</tbody>	
							</table>
						</div>
						<div class="paging">
						<%
							//현재 페이지 값에 의해 블럭의 시작페이지 값을 구하자
							int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;

							//블럭의 마지막 페이지 값 구하기
							int endPage = startPage + pagePerBlock - 1;//6

							//startPage의 값은 항상 1 또는 6, 11 형식이다. 그러다보니
							//이전으로 라는 기능을 활성화 하지 않으려면
							//startPage가 pagePerBlock보다 작을 때다.

							if (startPage < pagePerBlock) {
						%>
						<img src='../../images/prev.jpg'/>
						<%
							} else {
						%>
						<span><a
							href="search_ok.jsp?cPage=<%=nowPage - pagePerBlock%>"><img
								src='../../images/prev.jpg'/></a></span>
						<%
							}

							//간혹 endPage의 값이 totalPage의 값을 넘어갈 때가 있을 수 있다.
							//이때 endPage값을 totalPage값으로 변경하자!
							if (endPage > totalPage)
								endPage = totalPage;

							for (int i = startPage; i <= endPage; i++) {

								if (i == nowPage) {
						%>
						<span class="now"><%=i%></span>
						<%
							} else {
						%>
						<span>
							<a href="javascript:list('<%=i %>')"><%=i %></a>
						</span>
						<%
							}
							}

							// endPage가 totalPage보다 작을 경우에만 다음으로 이동할 수 
							//있도록 활성화 시킨다.
							if (endPage < totalPage) {
						%>
						<span>
						<a
							href="search_ok.jsp?cPage=<%=nowPage + pagePerBlock%>"></a>
							<img src='../../images/next.jpg'/></a></span>
						<%
							} else {
						%>
						<span class="disable"><img src='../../images/next.jpg'/></span>
						<%
							}
						%>
					</div>
					</div>
				</div>
				<jsp:include page="../../jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
		<form name="frm" method="post">
		<input type="hidden" name="cPage" value="1"/>
		<input type="hidden" name="c_value" value="<%=c_value%>"/>	
		<input type="hidden" name="keyword" value="<%=keyword%>"/>
		<input type="hidden" name="seq"/> 
	</form>
	</div>
	<jsp:include page="../../jsp/common/footer.jsp"></jsp:include>

	<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$('select').sSelect({ddMaxHeight: '300px'});
	});
	</script>
	<script type="text/javascript">
	function list(p){
		document.frm.cPage.value = p;
		document.frm.action = "search_ok.jsp";
		document.frm.submit();
	}
</script>

</body>
</html>