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
<title>인크레파스: 개발자 취업현황</title>
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
        
        $("#tab1, #tab2").css("cursor","pointer");
        
        $("#tab1").bind("click",function(){
        	$("#c_code").val("1");
        	
			$("#table2").css("display","none");
			$("#table1").css("display","block");
			
			$("#tab2").attr("class","");
			$(this).attr("class","on");
		});
        
        $("#tab2").bind("click",function(){
        	$("#c_code").val("2");
        	
        	$("#table1").css("display","none");
			$("#table2").css("display","block");
			
			$("#tab1").attr("class","");
			$(this).attr("class","on");
		});
    });    
</script>
</head>
<body>
	<jsp:include page="/jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="/jsp/common/left.jsp" ></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="images/home.jpg" alt="인크레파스 취업지원"></a><span>취업지원</span><span>취업현황</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						취업현황
						<p>인크레파스를 통해 원하시는 기업에 꼭 취업하시길 바랍니다. </p>
					</div>
					<table class="table1">
						<colgroup>
							<col width="70" class="mo_ver">
							<col width="*">
							<col width="90">
							<col width="130" class="mo_ver">
							<col width="130" class="mo_ver">
						</colgroup>
						<thead>
							<tr>
								<th class="mo_ver">번 호</th>
								<th>제 목</th>
								<th>교육생</th>
								<th class="mo_ver">지 역</th>
								<th class="mo_ver">등록일</th>
							</tr>
						</thead>
						<tbody>
						
							<tr>
								<td class="mo_ver">176</td>
								<th><a href="javascript: viewData('178')">(주)코코링크 취업을 축하합니다</a></th>
								<td><p>박*기</p></td>
								<td class="mo_ver"><p>서울시 관악구</p></td>
								<td class="mo_ver">2018-04-17</td>
							</tr>
						
							<tr>
								<td class="mo_ver">175</td>
								<th><a href="javascript: viewData('177')">(주)알에스포스트 취업을 축하합니다</a></th>
								<td><p>박*민</p></td>
								<td class="mo_ver"><p>서울시 구로구</p></td>
								<td class="mo_ver">2018-04-17</td>
							</tr>
						
							<tr>
								<td class="mo_ver">174</td>
								<th><a href="javascript: viewData('176')">(주)탑비즈소프트 취업을 축하합니다</a></th>
								<td><p>황*영</p></td>
								<td class="mo_ver"><p>서울시 중랑구</p></td>
								<td class="mo_ver">2018-04-17</td>
							</tr>
						
							<tr>
								<td class="mo_ver">173</td>
								<th><a href="javascript: viewData('175')">(주)화이트정보통신 취업을 축하합니다</a></th>
								<td><p>오*진</p></td>
								<td class="mo_ver"><p>서울시 서초구</p></td>
								<td class="mo_ver">2018-04-17</td>
							</tr>
						
							<tr>
								<td class="mo_ver">172</td>
								<th><a href="javascript: viewData('174')">(주)티센크루프 취업을 축하합니다</a></th>
								<td><p>최*율</p></td>
								<td class="mo_ver"><p>서울시 구로구</p></td>
								<td class="mo_ver">2018-04-17</td>
							</tr>
						
							<tr>
								<td class="mo_ver">171</td>
								<th><a href="javascript: viewData('173')">(주)부뜰정보시스템 취업을 축하합니다</a></th>
								<td><p>김*은</p></td>
								<td class="mo_ver"><p>서울시 구로구</p></td>
								<td class="mo_ver">2018-04-12</td>
							</tr>
						
							<tr>
								<td class="mo_ver">170</td>
								<th><a href="javascript: viewData('172')">(주)유니메오 취업을 축하합니다</a></th>
								<td><p>김*정</p></td>
								<td class="mo_ver"><p>서울시 서초구</p></td>
								<td class="mo_ver">2018-04-06</td>
							</tr>
						
							<tr>
								<td class="mo_ver">169</td>
								<th><a href="javascript: viewData('171')">(주)농심데이타시스템(엔디에스) 취업을 축하합니다</a></th>
								<td><p>김*엽</p></td>
								<td class="mo_ver"><p>서울시 동작구</p></td>
								<td class="mo_ver">2018-04-06</td>
							</tr>
						
							<tr>
								<td class="mo_ver">168</td>
								<th><a href="javascript: viewData('170')">(주)폭스소프트 취업을 축하합니다</a></th>
								<td><p>김*별</p></td>
								<td class="mo_ver"><p>경기도 안양시</p></td>
								<td class="mo_ver">2018-04-03</td>
							</tr>
						
							<tr>
								<td class="mo_ver">167</td>
								<th><a href="javascript: viewData('169')">(주)한국정보컨설팅 취업을 축하합니다</a></th>
								<td><p>지*훈</p></td>
								<td class="mo_ver"><p>서울시 금천구</p></td>
								<td class="mo_ver">2018-03-26</td>
							</tr>
						
						</tbody>
					</table>
					<div class="paging">
						<img src="images/prev.jpg">&nbsp;<span style="color:#91B7EF;font-weight:bold">1</span>&nbsp;<a href="javascript:list(2)">2</a>&nbsp;<a href="javascript:list(3)">3</a>&nbsp;<a href="javascript:list(4)">4</a>&nbsp;<a href="javascript:list(5)">5</a>&nbsp;<img src="images/next.jpg" onclick="javascript:list(6)" style="cursor:pointer">
					</div>
				</div>
				
				<jsp:include page="/jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>	
	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
<script type="text/javascript" src="js/jquery.stylish-select.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('select').sSelect({ddMaxHeight: '300px'});
	});
</script>	
</body>
</html>