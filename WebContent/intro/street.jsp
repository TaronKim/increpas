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
<title>인크레파스: 인사말</title>

<link rel="stylesheet" type="text/css" href="../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../css/common.css"/>

<script src="../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<script type="text/javascript" src="../js/jquery.mousewheel.min.js"></script>

<script src="../js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
    });    
</script>
</head>

<body>
<jsp:include page="/jsp/common/menu.jsp"></jsp:include>
<jsp:include page="/jsp/common/left.jsp"></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="<%=request.getContextPath() %>/images/home.jpg" alt="인크레파스 교육생 프로젝트" /></a><span>커뮤니티</span><span>교육생프로젝트</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit4">
						<img src="<%=request.getContextPath() %>/images/map_img.jpg" alt="인크레파스 오시는 길">
						<h1>오시는 길</h1>
						<p>
							소중한 만남!<br>
							<span>인크레파스</span>로 오시는 길입니다.
						</p>
					</div>
					<div class="map_box1">
						<span class="tit"><strong>본관</strong></span>
						<h1>서울특별시 관악구 시흥대로 552 석천빌딩 7층</h1>
						<p><span>☎02-869-1080 </span> 지하철 2호선 구로디지털단지역 6번출구 나와서 우측으로 150m</p>
					</div>
					
					<div class="map_box2">
						<!-- Daum 지도 -->
					</div>
					
					<div class="map_box1 map_box1_2">
						<span class="tit"><strong>별관</strong></span>
						<h1>서울특별시 구로구 디지털로 32가길 16 파트너스타워2차 4층</h1>
						<p><span>☎02-869-1081 </span> 지하철 2호선 구로디지털단지역 2번출구 미니스톱 편의점 골목으로 150m(구로호텔 뒷건물)</p>
					</div>
					
					<div class="map_box2">
						<!-- Daum 지도 -->
					</div>
				</div>
				<jsp:include page="/jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>

<!-- script select -->
<script type="text/javascript" src="../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select').sSelect({ddMaxHeight: '300px'});
	});
</script>
<!-- //script select -->
</body>
</html>