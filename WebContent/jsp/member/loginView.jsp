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
<meta name="description" content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련"/>
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
    
    function login(){
    	var id = $("#id");
    	var pwd = $("#pwd");
    	if(id.val().trim().length <= 0){
    		alert("아이디를 입력하세요!");
			id.focus();
			return;
    	}
    	if(pwd.val().trim().length <= 0){
			alert("비밀번호를 입력하세요!");
			pwd.focus();
			return;
		}
    	document.forms[0].action = "sign_run.jsp";
		document.forms[0].submit();
    }
    
    function r_sign(){
    	if(xhr.readyState == 4 && xhr.status == 200){
    		var res = trim(xhr.responseText);
    		
    		if(res.length == 0)
    			location.href="index.jsp";
    		else if(res == "fail")
    			$("#pop1").fadeIn();
    		else
    			location.href=res;
    	}
    }
    
	function init(){
		
		var ch = document.getElementById("ch");
		
		if(ch != null && ch.value == '0')
			$("#pop2").fadeIn();
		else if(ch != null && ch.value == '1')
			$("#pop3").fadeIn();
		
	}
	
</script>
</head>

<body onload="init()">

 <jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="../../jsp/common/left.jsp" ></jsp:include> 
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="<%=request.getContextPath() %>/images/home.jpg" alt="인크레파스 로그인" /></a><span>로그인</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit5">
						<h1>로그인</h1>
						<p>인크레파스에 오신 것을 환영합니다.</p>
					</div>
					<div class="join_box2">
						<form name="f" action="sign_run.inc" method="post">
						<div class="join_box2_1">
							<h1>
								<img src="<%=request.getContextPath() %>/images/login_img1.jpg" alt="인크레파스 로그인" />
								<span>로그인</span>을 하신 후<br/>
								다양한 서비스를 이용하세요.
							</h1>
							<ul>
								<li><input type="text" id="id" name="id" placeholder="아이디를 입력하세요." /></li>
								<li><input type="password" id="pwd" name="pwd" placeholder="비밀번호를 입력하세요." /></li>
								<li class="btn"><a href="javascript:login()">로그인</a></li>
							</ul>
							<div class="txt">
								<a href="find_id.inc">아이디 찾기</a><a href="find_pw.inc">비밀번호 재발급</a><span>아이디, 비밀번호가 기억나지 않으세요?</span>
							</div>
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