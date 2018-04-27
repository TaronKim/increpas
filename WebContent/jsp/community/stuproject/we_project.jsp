<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>

<script src="js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>

<script src="js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
    });    
    function list(p){
		document.ff.nowPage.value = p;
		document.ff.action = "we_project.inc";
		document.ff.submit();
	}
</script>
</head>

<body>

<jsp:include page="/jsp/common/menu.jsp"></jsp:include>
	<jsp:include page="/jsp/common/left.jsp"></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="images/home.jpg" alt="인크레파스 교육생 프로젝트" /></a><span>커뮤니티</span><span>교육생프로젝트</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						교육생 프로젝트
						<p>인크레파스 교육생들의 프로젝트 결과물과 개발 후기를 공유합니다. </p>
					</div>
					<div class="search_area">
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
						
						<li>
							<div class="layout">
								<a href="project_view.inc?seq=1234&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/projectThumbnail/Increpas project_java game.png" alt="인크레파스" /></div>
									<h1>인크레파스 훈련생이 만든 The Space War (자바 기반 슈팅 게임)</h1>
									<h2>응용 SW엔지니어링 양성과정</h2>
									<p>작성일 | 2017/08/25</p>
								</a>
							</div>
						</li>
						
						<li>
							<div class="layout">
								<a href="project_view.inc?seq=1233&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/projectThumbnail/Increpas project.png" alt="인크레파스" /></div>
									<h1>인크레파스 훈련생이 만든 알코딩 (알고리즘 학습 사이트)</h1>
									<h2>시큐어코드를 활용한 전자정부표준프레임워크기반 응용SW개발자 과정</h2>
									<p>작성일 | 2017/08/25</p>
								</a>
							</div>
						</li>
						
						<li>
							<div class="layout">
								<a href="project_view.inc?seq=162&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/projectThumbnail/bo_img9.jpg" alt="인크레파스" /></div>
									<h1>웹 사이트 구현</h1>
									<h2>시큐어코드를 활용한 전자정부표준 프레임워크기반 응용SW개발자 과정</h2>
									<p>작성일 | 2016/06/06</p>
								</a>
							</div>
						</li>
							
					</ul>
					<div class="paging">
						<img src='images/prev.jpg'>&nbsp;<span style='color:#91B7EF;font-weight:bold'>1</span>&nbsp;<img src='images/next.jpg'>
					</div>
				</div>
				<jsp:include page="/jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>

<form name="ff" method="post">
	<input type="hidden" name="nowPage" value="1"/>
	<input type="hidden" name="seq"/> 
</form>



</body>
</html>