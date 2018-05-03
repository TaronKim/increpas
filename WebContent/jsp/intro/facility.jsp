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
					<div class="sub_tit2">
						교육시설
						<p>인크레파스 교육센터는 본관(서울시 관악구)과 별관(서울시 구로구)으로 운영되고 있습니다. 찾아오실 때 유의해 주세요.</p>
					</div>
					<ul class="sub_box3">
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img1.jpg" alt="인크레파스 본관">
							<p>
								본관
								<span>서울특별시 관악구<br>시흥대로 552 석천빌딩 7층</span>
							</p>
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img2.jpg" alt="인크레파스 본관1">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img3.jpg" alt="인크레파스 본관2">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img4.jpg" alt="인크레파스 본관3">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img5.jpg" alt="인크레파스 본관4">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img6.jpg" alt="인크레파스 본관5">
						</li>
					</ul>
					<ul class="sub_box3 sub_box3_2">
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img7.jpg" alt="인크레파스 별관">
							<p>
								별관
								<span>서울시 구로구<br>디지털로32가길 16 4층</span>
							</p>
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img8.jpg" alt="인크레파스 별관1">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img9.jpg" alt="인크레파스 별관2">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img10.jpg" alt="인크레파스 별관3">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img11.jpg" alt="인크레파스 별관4">
						</li>
						<li>
							<img src="<%=request.getContextPath() %>/images/sub_box3_img12.jpg" alt="인크레파스 별관5">
						</li>
					</ul>
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