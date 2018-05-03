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
						수강신청안내
						<p>인크레파스 교육센터 교육과정 수강신청을 위한 절차와 규정입니다.</p>
					</div>
					<div class="sub_box4">
						<h1 class="t1">국비무료취업과정 </h1>
						<h2>
							대한민국 정부는 취업이나 이직을 하고자 하는 개인과 인재를 양성하고 채용하고자 하는 기업을 지원하고 있습니다. 취업을 하고자 하시는 분께서는 정부로부터 교육비 100%를 지원받고, 교육수당과 식비, 교통비를 받으며 수업을 들을 수 있습니다. 교육에 필요한 교재 등 역시 무료로 지원 받을 수 있는 교육과정입니다.  
						</h2>
						<p>교육참여절차</p>
						<ul class="mab30">
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img12.jpg" alt="인크레파스 방문상담">
								<span>방문 상담</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img13.jpg" alt="인크레파스 서류전형 지원서작성">
								<span>서류전형/지원서작성</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img14.jpg" alt="인크레파스 교육참여">
								<span>교육참여</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img15.jpg" alt="인크레파스 수료 및 평가">
								<span>수료 및 평가</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img16.jpg" alt="인크레파스 취업지원">
								<span>취업지원</span>
							</li>
						</ul>
						<h1 class="t1">국비재직자과정</h1>
						<h2>
							고용노동부에서 운영하는 HRD 사이트를 통해 재직자 내일배움카드를 발급 받아 교육비의 80~100%를 지원받고 교육을 받을 수 있는 제도입니다. 
						</h2>
						<p>교육참여절차</p>
						<div class="sub_box4_img17">
							<img src="<%=request.getContextPath() %>/images/sub_box4_img17.jpg" class="img1" alt="인크레파스 교육참여절차">
							<img src="<%=request.getContextPath() %>/images/sub_box4_img17_2.jpg" class="img2" alt="인크레파스 교육참여절차2">
						</div>
					</div>
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