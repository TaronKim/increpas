<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">


<link rel="stylesheet" type="text/css" href="css/main.css"/>
<link rel="stylesheet" type="text/css" href="css/common.css"/>

<script src="js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->



<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>

<script src="js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
        
        $("ul.main_con1>li>div").css("cursor","pointer");
    });    
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:include page="/jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="/jsp/common/left.jsp" ></jsp:include>
	<div class="main_con">
		<ul class="main_con1">
			<li class="main_con1_1">
				<div onClick="javascript:location.href='gov_worker.inc';return false">
					<img src="images/main_img1.jpg" alt="인크레파스 개발자 교육과 국비지원 재직자 교육" />
					<h1>일반교육/재직자교육</h1>
					<span>
						<b>일반교육/재직자교육</b>
						<strong>일반 개발자과정과 국비지원 재직자교육을 소개합니다.</strong>
					</span>
				</div>
				<div onClick="javascript:location.href='we_project.inc';return false">
					<img src="images/main_img2.jpg" alt="인크레파스 개발자 프로젝트" />
					<h1>교육생 프로젝트</h1>
					<span>
						<b>교육생 프로젝트</b>
						<strong>인크레파스 교육생들의 프로젝트 결과물과 개발 후기를 공유합니다.</strong>
					</span>
				</div>
			</li>
			<li class="main_con1_2">
				
				
				<div class="slide"><img src="images/main_back.jpg" />
					<ul class="slide_ul">
						<li><a href="gov_free.inc"><img src="images/main_img3.jpg" /></a></li>				
						<li><a href="view_course.inc?num=20"><img src="images/carousel_img1.jpg" alt="인크레파스 자바 머신러닝(인공지능)과정 4월반1" /></a></li>
						<li><a href="view_course.inc?num=20"><img src="images/carousel_img2.jpg" alt="인크레파스 자바 머신러닝(인공지능)과정 4월반2"/></a></li>
						<li><a href="view_course.inc?num=20"><img src="images/carousel_img3.jpg" alt="인크레파스 자바 머신러닝(인공지능)과정 4월반3"/></a></li>
						<li><a href="view_course.inc?num=20"><img src="images/carousel_img4.jpg" alt="인크레파스 자바 머신러닝(인공지능)과정 4월반4"/></a></li>
						<!--
						<li><a href="view_course.inc?num=14"><img src="images/carousel_img1.jpg" alt="인크레파스 빅데이터 분석 개발 교육과정 9월반" /></a></li>
						<li><a href="view_course.inc?num=15"><img src="images/carousel_img2.jpg" alt="인크레파스 빅데이터 분석 개발 교육과정 11월반"/></a></li>
						<li><a href="view_course.inc?num=16"><img src="images/carousel_img4.jpg" alt="인크레파스 시큐어코딩 개발 교육과정 12월반"/></a></li>
						<li><a href="view_course.inc?num=17"><img src="images/carousel_img3.jpg" alt="인크레파스 프론트엔드 백엔드 개발 교육과정 12월반"/></a></li>
						<li><a href="view_course.inc?num=14"><img src="images/carousel_img2.jpg" alt="인크레파스 프론트엔드 백엔드 교육과정"/></a></li> 	
						<li><a href="view_course.inc?num=11"><img src="images/carousel_img4.jpg" /></a></li>
						<li><a href="view_course.inc?num=12"><img src="images/carousel_img3.jpg" /></a></li>-->					
						
					</ul>
				</div>
			</li>
			<li class="main_con1_3">
				<div onClick="javascript:location.href='counsel.inc';return false">
					<img src="images/main_img4.jpg" alt="인크레파스 국비교육 상담예약" />
					<h1>상담예약</h1>
					<span>
						<b>상담예약</b>
						<strong>개발자 취업, 국비지원 교육, 국가기간전략산업직종훈련에 관해 상담해 드립니다.</strong>
					</span>
				</div>
				<div onClick="javascript:location.href='job_present.inc';return false">
					<img src="images/main_img5.jpg" alt="인크레파스 융합SW교육센터 취업현황" />
					<h1>취업현황</h1>
					<span>
						<b>취업현황</b>
						<strong>인크레파스를 통해 원하시는 기업에 꼭 취업하시길 바랍니다.</strong>
					</span>
				</div>
			</li>
		</ul>
		<ul class="main_con1">
			<li class="main_con1_4">
				<div onClick="javascript:location.href='we_study.inc';return false">
					<img src="images/main_img6.jpg" alt="인크레파스 국비지원 무료 동영상 인강" />
					<h1>무료 동영상 강의</h1>
					<span>
						<b>무료 동영상 강의</b>
						<strong>자바, 안드로이드, 자바스크립트 & 웹개발, 데이터베이스 등 동영상 강의입니다.</strong>
					</span>
				</div>
			</li>
			<li class="main_con1_4">
				<div onClick="javascript:location.href='notice.inc';return false">
					<img src="images/main_img7.jpg" alt="인크레파스 개발자 칼럼과 정보" />
					<h1>개발자 칼럼과 정보</h1>
					<span>
						<b>개발자 칼럼과 정보</b>
						<strong>개발자가 되기 위한 학습방법, 학습자료 등을 알려드립니다.</strong>
					</span>
				</div>
			</li>
			<li class="main_con1_4">
				<div onClick="javascript:location.href='we_story.inc';return false">
					<img src="images/main_img8.jpg" alt="인크레파스 우리들의 이야기 공지사항" />
					<h1>우리들의 이야기</h1>
					<span>
						<b>우리들의 이야기</b>
						<strong>인크레파스와 인크레파스 교육생들의 소식과 생각들을 공유합니다.</strong>
					</span>
				</div>
			</li>
			<li class="main_con1_4">
				<div onClick="javascript:location.href='job_process.inc';return false">
					<img src="images/main_img9.jpg" alt="인크레파스 취업지원 절차" />
					<h1>취업지원절차</h1>
					<span>
						<b>취업지원절차</b>
						<strong>인크레파스는 취업전문기업 제이즈교육연구소와 교육생을 위한 취업 지원을 하고 있습니다.</strong>
					</span>
				</div>
			</li>
		</ul>
	</div>
	<div class="customer">
		<img src="images/customer.jpg" alt="인크레파스 전화" />
		<div id="katalk_div">
			<a href="http://pf.kakao.com/_UrkxcV/chat">
			<img src="images/KaTalk.jpg" alt="카톡상담"/>
			</a>
			<h1>추천과정</h1>
		</div>
		
	</div>
	
<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
	
<!-- 모바일메뉴 -->
<div class="m_submenu">
	

	<div class="m_submenu_layout">
		<div class="m_submenu_area">
			<a href="#" class="depth1">교육센터 소개</a>
			<ul>
				<li><a href="/jsp/design/intro/greet.jsp">인사말</a></li>
				<li><a href="story.inc">연혁</a></li>
				<li><a href="facility.inc">교육시설</a></li>
				<li><a href="professor.inc">교수소개</a></li>
				<li><a href="street.inc">오시는 길</a></li>
			</ul>
		</div>
		<div class="m_submenu_area">
			<a href="#" class="depth1">교육과정</a>
			<ul>
				<li><a href="gov_free.inc">국비무료취업과정</a></li>
				<li><a href="gov_worker.inc">국비재직자과정</a></li>
				<li><a href="custom_tailor.inc">기업맞춤교육과정</a></li>
			</ul>
		</div>
		<div class="m_submenu_area">
			<a href="#" class="depth1">고객센터</a>
			<ul>
				<li><a href="free.inc">국비무료교육</a></li>
				<li><a href="counsel.inc">상담예약</a></li>
				<li><a href="guide.inc">수강신청안내</a></li>
				<li><a href="notice.inc">개발자 칼럼과 정보</a></li>
			</ul>
		</div>
		<div class="m_submenu_area">
			<a href="#" class="depth1">커뮤니티</a>
			<ul>
				<li><a href="we_story.inc">우리들의이야기</a></li>
				<li><a href="we_project.inc">교육생프로젝트</a></li>
				<li><a href="we_study.inc">스터디자료</a></li>
			</ul>
		</div>
		<div class="m_submenu_area">
			<a href="#" class="depth1">취업지원</a>
			<ul>
				<li><a href="job_process.inc">취업지원절차</a></li>
				<li><a href="job_present.inc">취업현황</a></li>
				<li><a href="job_offer.inc">채용및구인의뢰</a></li>
			</ul>
		</div>
	</div>
</div>
<!--// 모바일메뉴 -->
<script type="text/javascript" src="http://wcs.naver.net/wcslog.js"></script> <script type="text/javascript"> if(!wcs_add) var wcs_add = {}; wcs_add["wa"] = "8572863a1b04"; wcs_do(); </script>

</body>
</html>