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
</script>
</head>

<body>
<jsp:include page="/jsp/common/menu.jsp"></jsp:include>
	<jsp:include page="/jsp/common/left.jsp"></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="images/home.jpg" alt="인크레파스 고객센터" /></a><span>고객센터</span><span>취업현황</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						취업현황
						<p>인크레파스 교육생들의 노력과 취업방향 정보입니다. 더 많은 분들께서 인크레파스와 함께 IT취업 준비하시고 더 좋은 대우를 받는 개발자(프로그래머)가 되시길 축복합니다.</p>
					</div>
					<div class="bo_view_top">
						(주)코코링크 취업을 축하합니다
						<span>작성일 | 2018-04-17</span>
					</div>
					<p></p>
					<div class="sub_box5_3a">
						<table>
							<colgroup>
								<col width="140" />
								<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th>교육생 명 </th>
									<td>박*기</td>
								</tr>
								<tr>
									<th>생년</th>
									<td>94년생</td>
								</tr>
								<tr>
									<th>과정명</th>
									<td>시큐어코드를 활용한 응용SW엔지니어 양성과정</td>
								</tr>
								<tr>
									<th>회사명</th>
									<td>(주)코코링크</td>
								</tr>
								<tr>
									<th>근무지역</th>
									<td>서울시 관악구</td>
								</tr>
								<tr>
									<th>입사일</th>
									<td>2018-04-17</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="bo_btn"><a href="job_present.inc?nowPage=">목록</a></div>
				</div>
				<!-- Quick -->
			
				<!--// Quick -->
			</div>
			<jsp:include page="/jsp/common/right.jsp"></jsp:include>
		</div>
	</div>
	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>


</body>
</html>