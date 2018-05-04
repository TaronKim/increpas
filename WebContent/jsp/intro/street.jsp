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

<link rel="stylesheet" type="text/css" href="../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../css/common.css"/>

<script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>

<script src="../../js/slickcustomscroll.js"></script>


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
					
					<div class="map_box2" id="map1" style=" height: 300px" >
						<!-- Daum 지도 -->
					</div>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ca1bba2ce20dc210a980eb5e7e372f2b&libraries=services"></script>
					<script type="text/javascript">
					var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
				    mapOption = {
				        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 4 // 지도의 확대 레벨
				    };  

				// 지도를 생성합니다    
				var map = new daum.maps.Map(mapContainer, mapOption); 

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new daum.maps.services.Geocoder();

				// 주소로 좌표를 검색합니다
				geocoder.addressSearch('서울특별시 관악구 시흥대로 552', function(result, status) {

				    // 정상적으로 검색이 완료됐으면 
				     if (status === daum.maps.services.Status.OK) {

				        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker = new daum.maps.Marker({
				            map: map,
				            position: coords
				        });

				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow = new daum.maps.InfoWindow({
				            content: '<div style="width:200px;text-align:center;padding:6px 0;">서울시 관악구 시흥대로 552</div>'
				        });
				        infowindow.open(map, marker);

				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map.setCenter(coords);
				    } 
				});    
					</script>
					<div class="map_box1 map_box1_2" >
						<span class="tit"><strong>별관</strong></span>
						<h1>서울특별시 구로구 디지털로 32가길 16 파트너스타워2차 4층</h1>
						<p><span>☎02-869-1081 </span> 지하철 2호선 구로디지털단지역 2번출구 미니스톱 편의점 골목으로 150m(구로호텔 뒷건물)</p>
					</div>
					
					<div class="map_box2" id="map2" style=" height: 300px">
						<!-- Daum 지도 -->
					</div>
					<script type="text/javascript">
					var mapContainer2 = document.getElementById('map2'), // 지도를 표시할 div 
				    mapOption2 = {
				        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
				        level: 4 // 지도의 확대 레벨
				    };  

				// 지도를 생성합니다    
				var map1 = new daum.maps.Map(mapContainer2, mapOption2); 

				// 주소-좌표 변환 객체를 생성합니다
				var geocoder1 = new daum.maps.services.Geocoder();

				// 주소로 좌표를 검색합니다
				geocoder1.addressSearch('서울특별시 구로구 디지털로 32가길 16', function(result, status) {

				    // 정상적으로 검색이 완료됐으면 
				     if (status === daum.maps.services.Status.OK) {

				        var coords1 = new daum.maps.LatLng(result[0].y, result[0].x);

				        // 결과값으로 받은 위치를 마커로 표시합니다
				        var marker1 = new daum.maps.Marker({
				            map: map1,
				            position: coords1
				        });

				        // 인포윈도우로 장소에 대한 설명을 표시합니다
				        var infowindow1 = new daum.maps.InfoWindow({
				            content: '<div style="width:200px;text-align:center;padding:6px 0;">서울시 구로구 디지털로 32가길 16</div>'
				        });
				        infowindow1.open(map1, marker1);

				        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
				        map1.setCenter(coords1);
				    } 
				});    
					</script>
				</div>
				<jsp:include page="/jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>

	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>

<!-- script select -->
<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select').sSelect({ddMaxHeight: '300px'});
	});
</script>
<!-- //script select -->
</body>
</html>