<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
		document.ff.action = "we_story.inc";
		document.ff.submit();
	}
</script>
</head>

<body>

<jsp:include page="/jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="/jsp/common/left.jsp" ></jsp:include>

	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="images/home.jpg" alt="인크레파스 우리들의 이야기" /></a><span>커뮤니티</span><span>우리들의이야기</span>
			</div>
			<div class="sub_box1">
			
				<div class="sub_layout2">
					<div class="sub_tit2">
						우리들의이야기
						<p>인크레파스와 인크레파스 교육생들의 소식과 생각들을 공유합니다.</p>
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
								<a href="story_view.inc?seq=1379&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/storyThumbnail/Increpas_IoT_Career.png" alt="" /></div>
									<h1>인크레파스 사물인터넷 IoT 직무설명회에 다녀왔습니다. </h1>
									<h2>응용SW를 활용한 빅데이터 구축 및 분석 양성과정</h2>
									<p>작성일 | 2017/10/17</p>
								</a>
							</div>
						</li>
						
						<li>
							<div class="layout">
								<a href="story_view.inc?seq=1364&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/storyThumbnail/Increpas_book_human programmer.png" alt="" /></div>
									<h1>개발자를 위한 책, 그럼에도 불구하고 너무나 인간적인</h1>
									<h2>시큐어코드를 활용한 응용 SW 엔지니어 양성과정</h2>
									<p>작성일 | 2017/10/12</p>
								</a>
							</div>
						</li>
						
						<li>
							<div class="layout">
								<a href="story_view.inc?seq=1358&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/storyThumbnail/Increpas_Developer_Career.png" alt="" /></div>
									<h1>인크레파스 훈련생 개발자 취업특강을 진행하였습니다.</h1>
									<h2>시큐어코드를 활용한 응용 SW 엔지니어 양성과정</h2>
									<p>작성일 | 2017/10/12</p>
								</a>
							</div>
						</li>
						
						<li>
							<div class="layout">
								<a href="story_view.inc?seq=1232&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/storyThumbnail/Increpas Lunch.png" alt="" /></div>
									<h1>인크레파스 훈련생 회식 진행하였습니다. (feat. 구로디지털단지 만세육간)</h1>
									<h2>시큐어코드를 활용한 응용 SW 엔지니어 양성과정</h2>
									<p>작성일 | 2017/08/25</p>
								</a>
							</div>
						</li>
						
						<li>
							<div class="layout">
								<a href="story_view.inc?seq=1222&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/storyThumbnail/Increpas_Students_visiting.png" alt="" /></div>
									<h1>훈련생 여러분, 원하는 회사에 꼭 취업하시고 식사 하시러 오세요!</h1>
									<h2>빅데이터를 활용한 전자정부표준프레임워크 기반 응용SW개발자 과정</h2>
									<p>작성일 | 2017/08/22</p>
								</a>
							</div>
						</li>
						
						<li>
							<div class="layout">
								<a href="story_view.inc?seq=1217&nowPage=1">
									<div class="img"><img src="http://increpas.com/ems/upload/storyThumbnail/Increpas_Checklist.png" alt="" /></div>
									<h1>왜 이력서 작성할 때 체크리스트를 통해 꼼꼼하게 확인해야 할까요? (OOO 훈련생 사례)</h1>
									<h2>응용 SW엔지니어링 양성과정</h2>
									<p>작성일 | 2017/08/22</p>
								</a>
							</div>
						</li>
							
					</ul>
					<div class="paging">
						<img src='images/prev.jpg'>&nbsp;<span style='color:#91B7EF;font-weight:bold'>1</span>&nbsp;<a href='javascript:list(2)'>2</a>&nbsp;<img src='images/next.jpg'>
					</div>
				</div>
				<!-- Quick -->
				
<jsp:include page="/jsp/common/right.jsp" ></jsp:include>
   
			</div>
		</div>
	</div>

<jsp:include page="/jsp/common/footer.jsp" ></jsp:include>


</body>
</html>