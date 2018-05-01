<%@page import="vo.EduVO"%>
<%@page import="jdk.internal.org.objectweb.asm.tree.analysis.Value"%>
<%@page import="vo.MemberVO"%>
<%@page import="vo.ProjectVO"%>
<%@page import="dao.ProjectDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%    
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
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


<!-- <script type="text/javascript" src="../../../js/jquery.min.js"></script> -->
<script type="text/javascript" src="../../../js/jquery.mousewheel.min.js"></script>

<script src="../../../js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
    });    
</script>


</head>

<body>
<%
int nowPage = 1;//현재 페이지값
int totalRecord = 0; //총 게시물의 수
int numPerPage = 6;//한 페이지당 보여질 게시물의 수 

int pagePerBlock = 5; //페이지 묶음(한블럭당 5개 )
int totalPage = 0; //총 페이지 수

totalRecord = ProjectDAO.getTotalCount();

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

<jsp:include page="/jsp/common/menu.jsp"></jsp:include>
<jsp:include page="/jsp/common/left.jsp"></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="<%=request.getContextPath() %>/images/home.jpg" alt="인크레파스 교육생 프로젝트" /></a><span>커뮤니티</span><span>교육생프로젝트</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						교육생 프로젝트
						<p>인크레파스 교육생들의 프로젝트 결과물과 개발 후기를 공유합니다. </p>
					</div>
					<div class="search_area">
						<%
							
							if(mvo != null){
								if(mvo.getM_TYPE().equals("0")){
						%>
								<a href="project_write.jsp?cPage=<%=nowPage%>" class="search_btn btn_write">글쓰기</a>
						<%
								}
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
						</div><input type="text" class="search_input" /><a href="#" class="search_btn">검색</a>
					</div>
					
					<ul class="board_list">
					<%
						int m_type = 1;
						if(mvo != null){
							m_type = Integer.parseInt(mvo.getM_TYPE());
						}
					
						int begin = (nowPage - 1) * numPerPage + 1;
	
						int end = begin + numPerPage - 1;
						//총 게시물의 수
						ProjectVO[] ar = ProjectDAO.projectList(begin, end, m_type); //현재페이지 값을 받아야 begin과 end 값을 구할수 있다
	
						if (ar != null && ar.length > 0) {
							for (int i = 0; i < ar.length; i++) {
								ProjectVO pvo = ar[i];
								//순차적인 번호를 만들어낸다 . 그 페이지에서 높은값부터
								int num = totalRecord - ((nowPage - 1) * numPerPage + i);
					%>
					<li>
						<div class="layout">
							<a href="project_view.jsp?c_idx=<%=pvo.getC_idx()%>&cPage=<%=nowPage%>">
								<div class="img"><img src="<%=request.getContextPath() %>/upload/<%=pvo.getC_img() %>" alt="인크레파스" /></div>
								<h1><%=pvo.getC_title() %></h1>
								<h2><%=pvo.getEvo().getE_title() %></h2>
								<p>작성일 | <%=pvo.getC_writedate().substring(0, 10) %></p>
							</a>
						</div>
					</li>
			<%
							}
				}else{
			%>		
					<li class="list_none">
						<p>현재 등록된 게시물이 없습니다.</p>
					</li>
			<%		
				}
			%>

							
					</ul>
					
					<!-- paging -->
					<div class="paging">
				<%
					//현재 페이지 값에 의해 블럭의 시작페이지 값을 구하자
					int startPage = (int)((nowPage-1)/pagePerBlock)*pagePerBlock+1;
				
					//블럭의 마지막 페이지 값 구하기
					int endPage = startPage + pagePerBlock - 1;//6
					
					//startPage의 값은 항상 1 또는 6, 11 형식이다. 그러다보니
					//이전으로 라는 기능을 활성화 하지 않으려면
					//startPage가 pagePerBlock보다 작을 때다.
					
					if(startPage < pagePerBlock){
					
				%>
						<img src='<%=request.getContextPath() %>/images/prev.jpg'>&nbsp;
				<%		
					}else{
				%>
						<%-- <li><a href="list.jsp?cPage=<%=nowPage-pagePerBlock%>">&lt;</a></li> --%>
						<a href="we_project.jsp?cPage=<%=nowPage-pagePerBlock%>">
							<img src='<%=request.getContextPath() %>/images/prev.jpg'>
						</a>&nbsp;
				<%		
					}
					
					//간혹 endPage의 값이 totalPage의 값을 넘어갈 때가 있을 수 있다.
					//이때 endPage값을 totalPage값으로 변경하자!
					if(endPage > totalPage)
						endPage = totalPage;
					
					for(int i=startPage; i<=endPage; i++){
									
						if(i == nowPage){
				%>
						<span style='color:#91B7EF;font-weight:bold'><%=i %></span>&nbsp;
				<%			
						}else{
				%>
						<%-- <li><a href="list.jsp?cPage=<%=i%>"><%=i %></a></li> --%>
						<span style='color:#91B7EF;font-weight:bold'><a href="we_project.jsp?cPage=<%=i %>"><%=i %></a></span>&nbsp;
				<%			
						}
					}
					
					// endPage가 totalPage보다 작을 경우에만 다음으로 이동할 수 
					//있도록 활성화 시킨다.
					if(endPage < totalPage){
				%>
					<%-- <li><a href="list.jsp?cPage=<%=nowPage+pagePerBlock%>">&gt;</a></li> --%>
					<a href="we_project.jsp?cPage=<%=nowPage+pagePerBlock%>"><img src='<%=request.getContextPath() %>/images/next.jpg'></a>
				<%		
					}else{
				%>
					<img src='<%=request.getContextPath() %>/images/next.jpg'>
				<%		
					}
				%> 
						
					</div>
					<!-- //paging -->
				</div>
				<jsp:include page="/jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>

<form name="frm" method="post">
	<input type="hidden" name="nowPage" value="1"/>
	<input type="hidden" name="seq"/> 
</form>

<!-- script select -->
<script type="text/javascript" src="../../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select').sSelect({ddMaxHeight: '300px'});
	});
</script>
<!-- //script select -->

<!-- <script type="text/javascript">
	function list(p){
		document.frm.nowPage.value = p;
		document.frm.action = "we_project.jsp";
		document.frm.submit();
	}
</script> -->


</body>
</html>