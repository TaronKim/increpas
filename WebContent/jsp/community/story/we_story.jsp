<%@page import="vo.MemberVO"%>
<%@page import="vo.CommVO"%>
<%@page import="dao.CommDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
	//HttpSession이 session.getAttribute("mvo");로 얻기
	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if(obj != null)
		mvo = (MemberVO)obj;
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련">
<title>인크레파스: 개발자로 성장하는 학교</title>

<link rel="stylesheet" type="text/css" href="../../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../../css/common.css"/>

<script src="../../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->


<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.mousewheel.min.js"></script>

<script src="../../../js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
    });  
    
    function list(p){
		document.ff.nowPage.value = p;
		document.ff.action = "we_story.jsp";
		document.ff.submit();
	}

</script>

<style>
.disable {
	padding: 3px 7px;
	color: silver;
}

.now {
	padding: 3px 7px;
	color: #91B7EF;
	font-weight: bold;
}

.btn_write{position:absolute;left:0;}
</style>
</head>

<body>
<%
int nowPage = 1;//현재 페이지값
int totalRecord = 0; //총 게시물의 수
int numPerPage = 6;//한 페이지당 보여질 게시물의 수 

int pagePerBlock = 5; //페이지 묶음(한블럭당 5개 )
int totalPage = 0; //총 페이지 수

totalRecord = CommDAO.getTotalCount();

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
<jsp:include page="../../../jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="../../../jsp/common/left.jsp" ></jsp:include>

	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="../../../images/home.jpg" alt="인크레파스 우리들의 이야기" /></a><span>커뮤니티</span><span>우리들의이야기</span>
			</div>
			<div class="sub_box1">
			
				<div class="sub_layout2">
					<div class="sub_tit2">
						우리들의이야기
						<p>인크레파스와 인크레파스 교육생들의 소식과 생각들을 공유합니다.</p>
					</div>
					<div class="search_area">
					<% 
					if(mvo !=null){
						if(mvo.getM_TYPE().equals("0")){
						%>
						<a href="story_write.jsp?cPage=<%=nowPage %>" class="search_btn btn_write">글쓰기</a>
							<% } 
						}
						%>
						<div class="select_type1 w160">
							<div class="select_type1_1">
								<select>
									<option value="">제목</option>
									<option value="">내용</option>
									<option value="">제목+내용</option>
								</select>
							</div>
						</div>
						
						<input type="text" class="search_input" /><a href="#" class="search_btn">검색</a>
					</div>
					<ul class="board_list">
						
						<%
					
						 
						int begin = (nowPage - 1) * numPerPage + 1;

						int end = begin + numPerPage - 1;
						
						int m_type = 1;
						if(mvo != null){
							m_type = Integer.parseInt(mvo.getM_TYPE());
						}
						//총 게시물의 수
						CommVO[] ar = CommDAO.getList(begin, end, m_type); //현재페이지 값을 받아야 begin과 end 값을 구할수 있다

						if (ar != null && ar.length > 0) {
							for (int i = 0; i < ar.length; i++) {
								CommVO vo = ar[i];
								//순차적인 번호를 만들어낸다 . 그 페이지에서 높은값부터
								int num = totalRecord - ((nowPage - 1) * numPerPage + i);
					%>
						
						<li>
							<div class="layout">
								
									<div class="img">
										<a href="story_view.jsp?c_idx=<%=vo.getC_idx()%>&cPage=<%=nowPage%>">
										<img src="../../../upload/<%=vo.getC_img() %>" /></a>
									</div>
									<div class="gallery">
									<h1><%=vo.getC_title()%></h1>
									<h2><%=vo.getC_content()%></h2>
									<p>작성일 |<%=vo.getC_writedate()%></p>
									</div>
								
							</div>
						</li>
						
						<%
							}
							} else {
						%>
						<li>
							<div class="layout">현재 등록된 게시물이 없습니다 .</div>
						</li>
						<%
							}
						%>
							
					</ul>
					
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
						<img src='../../../images/prev.jpg'>
							<%
								} else {
							%>
								<span><a href="we_story.jsp?cPage=<%=nowPage - pagePerBlock%>"><img src='../../../images/prev.jpg'></a></span>
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
							<span><a href="we_story.jsp?cPage=<%=i%>"><%=i%></a></span>
							<%
								}
								}

								// endPage가 totalPage보다 작을 경우에만 다음으로 이동할 수 
								//있도록 활성화 시킨다.
								if (endPage < totalPage) {
							%>
							<span><a href="we_story.jsp?cPage=<%=nowPage + pagePerBlock%>"></a><img src='../../../images/next.jpg'></a></span>
							<%
								} else {
							%>
							<span class="disable"><img src='../../../images/next.jpg'></span>
							<%
								}
							%>
					</div>
			
						
				</div>
				<!-- Quick -->
				
<jsp:include page="../../../jsp/common/right.jsp" ></jsp:include>
   
			</div>
		</div>
	</div>

<jsp:include page="../../../jsp/common/footer.jsp" ></jsp:include>


</body>
</html>