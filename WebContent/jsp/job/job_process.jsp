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
						취업지원 절차
						<p>인크레파스는 취업전문기업 제이즈교육연구소와 교육생들을 위한 취업 지원을 하고 있습니다. 현재 여러 기업들과 업무협약을 맺고, <span>인재 추천 등을 통해 취업 지원을 하고 있습니다.</span></p>
					</div>
					<div class="sub_box8">
						<img src="<%=request.getContextPath() %>/images/sub_box8_img1.png" alt="인크레파스 인재추천">
						<p>인재 추천을 요청한 기업에게는 실력있는 개발자를 추천해 드리고, 사회에 개발자로 커리어를 시작하는 교육생에게는 현장에서 바로 활용할 수 있는 개발 실력을 갖추도록 지원하겠습니다. </p>
					</div>
					<div class="sub_box9">
						<h1>취업지원 절차</h1>
						<ul>
							<li><img src="<%=request.getContextPath() %>/images/sub_box9_img1.jpg" alt="인크레파스 취업지원절차1"></li>
							<li><img src="<%=request.getContextPath() %>/images/sub_box9_img2.jpg" alt="인크레파스 취업지원절차2"></li>
						</ul>
						<div><img src="<%=request.getContextPath() %>/images/sub_box9_img3.jpg" alt="인크레파스 취업지원절차3"></div>
					</div>
					<div>
						<p>인크레파스 교육센터는 개발자가 되기 위해 알고 있어야 하는 내용을 중심으로 한 특강과 취업전문교육기업 제이즈교육연구소 특강, 이력서 첨삭 및 모의면접, 매주 발송되는 채용공고, 협약기업 인재추천, 개발자모드와 인크레파스 채널을 통한 학습자료 제공 등으로 취업을 지원하고 있습니다. 인크레파스 교육센터에서 수업을 들으면서 원하시는 기업에 취업하는 개발자가 되시길 응원합니다. 끝까지 포기하지 마시고 꼭 원하는 바를 이루시길 바랍니다. </p>
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