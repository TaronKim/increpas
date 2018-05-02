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

<link rel="stylesheet" type="text/css" href="../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../css/common.css"/>

<script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<!-- <script type="text/javascript" src="../../js/main.js"></script> -->

<!-- <script type="text/javascript" src="../../js/jquery.min.js"></script> -->
<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>

<script src="../../js/slickcustomscroll.js"></script>
<!-- <script type="text/javascript" src="../../js/httpRequest.js"></script> -->


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
		$("#naver_id_login").bind("click",function(e){
        	location.href="naverLogin.inc";
        });
    });  
    
    //////////////////////////////////////////////////////////////////////////////////
    
    function trim(str){ //공백제거 함수
		var s = str.replace(/^\s+|\s+$/g,"");
		
		return s;
	}
    
    function search(){
		var name = $("#name");
		if(name.val().trim().length <= 0){
			alert("회원의 이름을 입력하세요!");
			name.focus();
			return;
		}
		document.f.submit();
    }
    
</script>
</head>

<body >

 <jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="../../jsp/common/left.jsp" ></jsp:include> 
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="<%=request.getContextPath() %>/images/home.jpg" alt="인크레파스 회원검색" /></a><span>회원검색</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit5">
						<h1>회원검색</h1>
						<p>인크레파스 회원을 검색 할 수 있습니다.</p>
					</div>
					<div class="join_box2">
						<form name="f" action="search_ok.jsp" method="post">
						<div class="join_box2_1">
							<h1>
								<img src="<%=request.getContextPath() %>/images/login_img1.jpg" alt="인크레파스 회원검색" />
								<span>회원이름</span>을 입력 하신 후<br/>
								검색버튼을 눌러주세요
							</h1>
							<ul>
								<li><input type="text" id="name" name="m_name" placeholder="검색하실 회원의 이름을 입력하세요." /></li>
								<li class="btn1"><a href="javascript:search()">검색</a></li>
							</ul>
						</div>
						</form>
					</div>
				</div>
				<jsp:include page="../../jsp/common/right.jsp" ></jsp:include>
			</div>
		</div>
	</div>
	
	<jsp:include page="../../jsp/common/footer.jsp" ></jsp:include>



</body>
</html>