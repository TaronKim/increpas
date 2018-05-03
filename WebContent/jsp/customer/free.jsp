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
						국비무료교육
						<p>인크레파스 융합SW교육센터는 고용노동부 지정 교육센터로서 국비지원 교육(국가기간전략산업직종훈련, 국가전략)을 진행하고 있습니다.</p>
					</div>
					<div class="sub_box4">
						<h1>취업 및 재취업의 꿈을 이루기 위해 정부가 지원하는 교육입니다.</h1>
						<h2>
							IT 기업으로 취업을 희망하는 분들(취업준비생, 예비창업가, 졸업예정자, 야간대/사이버대/방통대 학생, 퇴사예정자, 영세사업자, 이직희망자)을 위한 교육과정입니다. 교육비 전액을 정부가 지원하는 교육과정입니다. IT 기업에서 요구하는 개발자 직무능력에 맞춰 NCS 기반 교육이 진행됩니다. 웹 애플리케이션을 만들고 다양한 프레임워크에서의 개발력을 습득함으로써 취업 후 회사 발전에 기여하는 인재육성을 목표로 합니다. 
						</h2>
						<p>국비무료교육 신청절차</p>
						<ul>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img1.jpg" alt="인크레파스 상담예약">
								<span>상담예약</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img2.jpg" alt="인크레파스 전화상담">
								<span>전화상담</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img3.jpg" alt="인크레파스 참여자격 확인">
								<span>참여자격 확인</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img4.jpg" alt="인크레파스 방문면접 및 교육생 선발">
								<span>방문면접 및 교육생 선발</span>
							</li>
							<li>
								<img src="<%=request.getContextPath() %>/images/sub_box4_img5.jpg" alt="인크레파스 고용복지플러스센터방문">
								<span>고용복지플러스센터 방문</span>
							</li>
						</ul>
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