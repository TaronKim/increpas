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
<title>인크레파스: 국비무료 취업과정</title>
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
				<a><img src="images/home.jpg" alt="인크레파스 교육과정"></a><span>교육과정</span><span>국비무료취업과정</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						국비무료취업과정
						<p>인크레파스는 고용노동부 지정 직업능력개발훈련시설로서 정부가 지원하는 국비지원 교육(국가기간전략산업직종훈련, 국가전략)을 진행하고 있습니다.</p>
					</div>
					<div class="search_area">
						<form method="post">
						    <input type="hidden" name="code" id="c_code"> 
							<div class="select_type1  w160">
								<div class="select_type1_1">
									<select style="display: none;">
										<option value="">제목</option>
										<option value="">내용</option>
										<option value="">제목+내용</option>
									</select>
								</div>
							</div><input type="text" class="search_input"><a href="#" class="search_btn">검색</a>
						</form>
					</div>
					<div class="sub_tab marmT33">
						<span class="on" id="tab1" style="cursor: pointer;"><a>국가기간</a></span><span id="tab2" style="cursor: pointer;"><a>계좌제</a></span>
					</div>
					<div id="table1">
						<table class="table1">
							<colgroup>
								<col width="70">
								<col width="*">
								<col width="70">
							</colgroup>
							<tbody>
								<tr>
									<td><img src="http://increpas.com/ems/upload/thumbnail/Thumb_Java_AI_20180201.JPG" alt=""></td>
									<th><a href="view_course.inc?num=20">자바머신러닝기반 응용SW엔지니어 양성과정</a><p>개강일 :2018-04-26</p></th>
									<td>
										
									</td>
								</tr>
							
								<tr>
									<td><img src="http://increpas.com/ems/upload/thumbnail/Thumb_Increpas_Java_Arduino_IoT_20180201.jpg" alt=""></td>
									<th><a href="view_course.inc?num=18">자바 개발 교육 &amp; 아두이노를 활용한 사물인터넷 (IoT) 엔지니어 양성 과정</a><p>개강일 :2018-05-24</p></th>
									<td>
										
									</td>
								</tr>
							
								<tr>
									<td><img src="http://increpas.com/ems/upload/thumbnail/" alt=""></td>
									<th><a href="view_course.inc?num=21">자바 개발 교육 &amp; 아두이노를 활용한 사물인터넷 (IoT) 엔지니어 양성 과정</a><p>개강일 :2018-06-27</p></th>
									<td>
									
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div id="table2" class="none">
						<table class="table1">
							<colgroup>
								<col width="70">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<td colspan="2" class="empty">
										현재 등록된 실업자(계좌제)과정이 없습니다.
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="paging">

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