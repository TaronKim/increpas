<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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


<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.mousewheel.min.js"></script>

<script src="../../../js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
    });    
</script>
</head>

<body>

<jsp:include page="../../../jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="../../../jsp/common/left.jsp" ></jsp:include> 
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="images/home.jpg" alt="인크레파스 우리들의 이야기" /></a><span>커뮤니티</span><span>우리들의이야기</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						우리들의이야기
						<p>인크레파스 교육생들의 소식과 생각들을 공유합니다.</p>
					</div>
					<div class="bo_view_top">
						인크레파스 사물인터넷 IoT 직무설명회에 다녀왔습니다. 
						<span>작성일 | 2017-10-17</span>
					</div>
					<div class="bo_view"><span style="color:rgb(102, 102, 102); font-family:나눔고딕,nanumgothic,se_nanumgothic,applesdgothicneo,sans-serif,simhei; font-size:16px">개발자로 성장하는 학교 인크레파스입니다. 지난 금요일 서울 삼성동 코엑스에서 사물인터넷 IoT 직무설명회가 진행되었습니다. 4차 산업혁명과 Industrial 4.0에서 큰 비중을 차지하고 있는 사물인터넷의 인기로 많은 이들이 직무설명회에 참석한 것을 볼 수 있었습니다.&nbsp;</span><br />
<br />
<span style="color:rgb(102, 102, 102); font-family:나눔고딕,nanumgothic,se_nanumgothic,applesdgothicneo,sans-serif,simhei; font-size:16px">이번 포스팅을 통해 인크레파스 융합SW교육센터에서 사물인터넷 교육과정을 듣고 있는 개발자 분들 뿐만 아니라 사물인터넷에 관심을 갖고 계신 분들께 도움이 되었으면 합니다.<br />
<br />
자세한 내용 확인하기:&nbsp;<a href="http://blog.naver.com/frogramo/221118457041">http://blog.naver.com/frogramo/221118457041</a></span><br />
<br />
<br />
<br />
<img alt="" src="http://increpas.com/ems/upload/images/Increpas_IoT_Career.png" style="height:500px; width:500px" />
<div>&nbsp;</div>

						
					</div>
					<div class="bo_btn"><a href="we_story.inc?nowPage=1">목록</a></div>
				</div>
				<jsp:include page="../../../jsp/common/right.jsp" ></jsp:include>
			</div>
			
		</div>
	</div>
	<jsp:include page="../../../jsp/common/footer.jsp" ></jsp:include>

<script type="text/javascript" src="../../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('select').sSelect({ddMaxHeight: '300px'});
});
</script>


</body>
</html>