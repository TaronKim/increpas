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
					<div class="sub_tit2">
						교수소개
						<p>개발자 출신, 컴퓨터공학 박사, IT전문도서 저자, 유튜브 채널 운영자 등 최고의 교수진을 자랑하는 인크레파스의 교수팀 입니다.</p>
					</div>
					<ul class="professor_list">
						<li>
							<div class="img"><img src="<%=request.getContextPath() %>/images/michael.png" alt="인크레파스 오경주 대표이사"></div>
							<h1>
								오경주<span>대표이사 및 교수. 들음에서 믿음이 생기고, 그 믿음에서 행동이 뒤따른다.</span>
							</h1>
							<div class="table2">
								<table>
									<colgroup>
										<col width="120">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>강의분야</th>
											<td>자바, JSP, JDBC, XML, 오라클, MySQL, 스프링프레임워크, 웹개발, 사물인터넷, 빅데이터 등 강의 18년 , 개발 11년<br> </td>
										</tr>
										<tr>
											<th>강의, 재직 경력</th>
											<td>현 인크레파스, 전 한빛교육센터, 쌍용교육센터, KH정보교육원, 청명씨앤아이 등</td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div class="img"><img src="<%=request.getContextPath() %>/images/richard.jpg" alt="인크레파스 양천모 이사"></div>
							<h1>
								양천모<span>교수. 오늘 할 수 있는 일을 내일로 미루지 말자.</span>
							</h1>
							<div class="table2">
								<table>
									<colgroup>
										<col width="120">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>강의분야</th>
											<td>C언어, 임베디드, 사물인터넷, C++, MFC, 자바, JSP, 스프링프레임워크, 웹개발 등 강의 20년 , 개발 10년</td>
										</tr>
										<tr>
											<th>강의, 재직 경력</th>
											<td>현 인크레파스, 전 한빛교육센터, 쌍용교육센터, KH정보교육원, 중앙정보처리학원 등</td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div class="img"><img src="<%=request.getContextPath() %>/images/john.png" alt="인크레파스 정용훈 팀장"></div>
							<h1>
								정용훈<span>교수. 자바 프로그래밍 바이블 저자 "인간은 자신이 목표한 만큼 진화한다.</span>
							</h1>
							<div class="table2">
								<table>
									<colgroup>
										<col width="120">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>강의분야</th>
											<td>자바, JSP, 안드로이드 모바일앱, 안드로이드 웨어러블, 사물인터넷, 스프링프레임워크, 웹개발 등 강의 4년 , 개발 5년</td>
										</tr>
										<tr>
											<th>강의, 재직 경력</th>
											<td>현 인크레파스, 전 한빛교육센터, 솔데스크, 한빛ENI, 먼데이코리아 등</td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div class="img"><img src="<%=request.getContextPath() %>/images/lee.jpg" alt="인크레파스 이연수 교수"></div>
							<h1>
								이연수<span>교수. 이학석사. 노력은 결코 배신하지 않는다</span>
							</h1>
							<div class="table2">
								<table>
									<colgroup>
										<col width="120">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>강의분야</th>
											<td>리눅스, 시큐어코딩, 파이썬, 자바, JSP, 스프링프레임워크, 하이브리드, 웹표준 등 강의 17년 , 개발 9년</td>
										</tr>
										<tr>
											<th>강의, 재직 경력</th>
											<td>현 인크레파스, 에이콘이즈, 전 한빛교육센터, 중앙정보처리학원, 한성대학교, 명지전문대학교 등 </td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div class="img"><img src="<%=request.getContextPath() %>/images/lee2.png" alt="인크레파스 이정봉 교수"></div>
							<h1>
								이정봉<span>교수. 컴퓨터공학 박사. 노력하고 또 노력하자</span>
							</h1>
							<div class="table2">
								<table>
									<colgroup>
										<col width="120">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>강의분야</th>
											<td>자바, JSP, 안드로이드, 스프링프레임워크, 전자정부표준프레임워크, 빅데이터, 웹개발 등 강의 17년 , 개발 9년</td>
										</tr>
										<tr>
											<th>강의, 재직 경력</th>
											<td>현 인크레파스, 전 오라클자바교육센터, 한빛교육센터, OJT정보기술, 아이티윌, 비트컴퓨터 등</td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div class="img"><img src="<%=request.getContextPath() %>/images/richard.jpg" alt="인크레파스 김일수 교수"></div>
							<h1>
								김일수<span>교수. 개발자로서 최선을 다하는 삶을 살자.</span>
							</h1>
							<div class="table2">
								<table>
									<colgroup>
										<col width="120">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>강의분야</th>
											<td>자바, JSP, 스프링프레임워크, 웹개발 등 강의 15년 , 개발 10년</td>
										</tr>
										<tr>
											<th>강의, 재직 경력</th>
											<td>현 인크레파스, 전 한빛교육센터 등</td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
						<li>
							<div class="img"><img src="<%=request.getContextPath() %>/images/john.png" alt="인크레파스 장동혁 교수"></div>
							<h1>
								장동혁<span>교수. 쉽게 설명 할 수 없다면 그것은 이해가 부족하기 때문이다.</span>
							</h1>
							<div class="table2">
								<table>
									<colgroup>
										<col width="120">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>강의분야</th>
											<td>자바, JSP, 자바스크립트, Node.js, Express Framework, 웹 개발 등 강의 2년</td>
										</tr>
										<tr>
											<th>강의, 재직 경력</th>
											<td>현 인크레파스 재직 중, 인크레파스 유튜브 채널, 인크레파스 오픈튜토리얼스 운영</td>
										</tr>
									</tbody>
								</table>
							</div>
						</li>
					</ul>
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