<%@page import="vo.MemberVO"%>
<%@page import="vo.StudyVO"%>
<%@page import="dao.StudyDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if (obj != null)
		mvo = (MemberVO) obj;

	String c_page = request.getParameter("cPage");
	String cVideo = request.getParameter("c_video");

	String c_video = "j";
	if (cVideo != null)
		c_video = cVideo;
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
<title>인크레파스: 자바, 안드로이드, 자바스크립트 웹개발, 데이터베이스 인터넷 강의</title>

<link rel="stylesheet" type="text/css" href="../../../css/main.css" />
<link rel="stylesheet" type="text/css" href="../../../css/common.css" />
<style>
.now {
	color: #91B7EF;
	font-weight: bold
}
</style>
<script src="../../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../../js/main.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->





<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript"
	src="../../../js/jquery.mousewheel.min.js"></script>

<script src="../../../
js/slickcustomscroll.js"></script>


<script type="text/javascript">

	$(document).ready(function() {

		$("div[rel='scrollcontent1']").customscroll({
			direction : "vertical"
		});
	});


	function list(p) {
		document.ff.cPage.value = p;
		document.ff.action = "we_study.jsp";

		document.ff.submit();

	}



	function view(c_idx) {
		document.ff.c_idx.value = c_idx;


		document.ff.action = "study_view.jsp";



		document.ff.submit();

	}
	function write() {
		document.frm.action = "study_write.jsp";

		document.frm.submit();

	}
	function selectList(v) {
		document.frm.c_video.value = v;

		document.frm.action = "we_study.jsp";

		document.frm.submit();

	}
</script>

</head>


<body>
	<jsp:include page="../../../jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="../../../jsp/common/left.jsp"></jsp:include>


	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="../../../images/home.jpg" alt="인크레파스 스터디 자료" /></a><span>커뮤니티</span><span>스터디
					자료</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						스터디 자료
						<p>인크레파스 교육센터에서 제공하는 자바, 안드로이드, 자바스크립트 & 웹개발, 데이터베이스 등 동영상
							강의입니다.</p>
					</div>
					<div class="search_area">

						<form action="" name="frm" method="post">
							<input type="hidden" name="c_video" id="c_video" /> <input
								type="hidden" name="cPage" value="<%=c_page%>" /> <input
								type="hidden" name="bname" id="bname" />
							<div class="select_type1 w160">
								<div class="select_type1_1">
									<select id="searchType" name="searchType"
										onchange="selectList(this.value)">
										<option value="j" <%if (c_video.equals("j")) {%>
											selected="selected" <%}%>>자바강의</option>
										<option value="a" <%if (c_video.equals("a")) {%>
											selected="selected" <%}%>>안드로이드강의</option>
										<option value="s" <%if (c_video.equals("s")) {%>
											selected="selected" <%}%>>SQL강의</option>
										<option value="w" <%if (c_video.equals("w")) {%>
											selected="selected" <%}%>>웹프로그래머강의</option>
									</select>
								</div>
							</div>
							<%
								if (mvo != null) {
									if (mvo.getM_type().equals("0")) {
							%>

							<a href="javascript:write()" class="search_btn">글쓰기</a>

							<%
								}//end of if
								}//end of if
							%>
						</form>
					</div>
					<br />
					<div id="table2">
						<table class="table1">
							<colgroup>
								<col width="200" />
								<col width="*" />
							</colgroup>
							<tbody>
								<%
									int nowPage = 1;
									int totalRecord = 0;
									int numPerPage = 6;

									int pagePerBlock = 5;
									int totalPage = 0;

									totalRecord = StudyDAO.getTotalCount(c_video);

									totalPage = (int) Math.ceil((double) totalRecord / numPerPage);

									if (c_page != null && !c_page.equals("null")) {
										nowPage = Integer.parseInt(c_page);

										if (nowPage > totalPage)
											nowPage = totalPage;
									}

									int begin = (nowPage - 1) * numPerPage + 1;
									int end = begin + numPerPage - 1;

									StudyVO[] ar = StudyDAO.getList(begin, end, c_video);

									if (ar != null) {
										String str = null;
										
										
										for (int i = 0; i < ar.length; i++) {
											StudyVO vo = ar[i];
											
											switch(vo.getC_video()){
											case "j": 
												str = "자바프로그래밍강의";
												break;
											case "a": 
												str = "안드로이드강의";
												break;
											case "s": 
												str = "SQL강의";
												break;
											case "w": 
												str = "자바프로그래밍강의";
												break;
											}
								%>
								<tr>
									<td><img
										src="http://increpas.com/ems/upload/studyFile/19-1.PNG" alt=""
										class="video_thum" /></td>
									<th><a href="javascript:view('<%=vo.getC_idx()%>')"><%=vo.getC_title()%></a>
										<p>
											<span>분류 | </span><%=str%></p></th>

								</tr>
								<%
									} //end of for
									} else {
								%>
								<tr>
									<th colspan="2">해당 글이 없습니다.</th>

								</tr>
								<%
									} //end of if
								%>
							</tbody>
						</table>
					</div>


					<div id="paging" class="paging" style="display: block">

						<%
							int startPage = (int) ((nowPage - 1) / pagePerBlock) * pagePerBlock + 1;
							int endPage = startPage + pagePerBlock - 1;

							if (startPage < pagePerBlock) {
						%>
						<img src='../../../images/prev.jpg' />&nbsp;
						<%
							} else {
						%>
						<a href="we_study.jsp?cPage=<%=nowPage - pagePerBlock%>"><img
							src='../../../images/prev.jpg' /></a>&nbsp;
						<%
							}

							if (endPage > totalPage)
								endPage = totalPage;

							for (int i = startPage; i <= endPage; i++) {
								if (i == nowPage) {
						%>
						<span class="now"><%=i%></span>&nbsp;
						<%
							} else {
						%>
						<a href='javascript:list(<%=i%>)'><%=i%></a>&nbsp;

						<%
							} //end of if
							} //end of for

							if (endPage < totalPage) {
						%>
						<a href="we_study.jsp?cPage=<%=nowPage + pagePerBlock%>"><img
							src='../../../images/next.jpg' /></a>&nbsp;
						<%
							} else {
						%>
						<img src='../../../images/next.jpg' />
					</div>
					<%
						}
					%>





				</div>
				<jsp:include page="../../../jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>
	<form name="ff" method="post">

		<input type="hidden" name="cPage" value="<%=c_page%>"/> <input type="hidden"
			name="m_div" id="m_div2" /> <input type="hidden" name="bname"
			id="bname2" /> <input type="hidden" name="c_idx" id="c_idx" />

	</form>
	<jsp:include page="../../../jsp/common/footer.jsp"></jsp:include>



</body>
</html>