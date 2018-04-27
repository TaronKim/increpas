<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description"
	content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련">
<title>인크레파스: 개발자로 성장하는 학교</title>

<link rel="stylesheet" type="text/css" href="../../css/main.css" />
<link rel="stylesheet" type="text/css" href="../../css/common.css" />

<script src="js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->


<script type="text/javascript" src="../../js/jquery-1.10.2.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>

<script src="../../js/slickcustomscroll.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
        
        $("#box2, #box3, #info2").css("display","none");
        
        $("#reg_bt1").bind("click", function(){
        	if(!$("#chk1").is(':checked')){
        		alert("이용약관에 동의하십이오!");
        		return;
        	}
        	if(!$("#chk2").is(':checked')){
        		alert("개인정보취급방침에 동의하십이오!");
        		return;
        	}
        	
        	
   			$("#box1, #box3").css("display","none");
   			$("#box2").css("display","block");
   			
   			$("#tab1, #tab3").attr("class","");
   			$("#tab2").attr("class","on");
    		
        	
        });
        
        $("#radio1, #radio2").bind("click", function(){
        	if($("#radio1").is(':checked')){
        	        	
        	
	   			
	   			$("#info2").css("display","block");
	   			
	   			
        	}else
        		$("#info2").css("display","none");
        	
        });
        
        $("#pwd_msg").attr("readonly",true);
        $("#pwd_msg").css("border","0px");
        
        // 달력 관련 부분 ------------------------------
        $.datepicker.regional['ko'] = {
				  closeText: '닫기',
				  prevText: '이전달',
				  nextText: '다음달',
				  currentText: '오늘',
				  monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
				  '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
				  monthNamesShort: ['1월','2월','3월','4월','5월','6월',
				  '7월','8월','9월','10월','11월','12월'],
				  dayNames: ['일','월','화','수','목','금','토'],
				  dayNamesShort: ['일','월','화','수','목','금','토'],
				  dayNamesMin: ['일','월','화','수','목','금','토'],
				  weekHeader: 'Wk',
				  dateFormat: 'yy-mm-dd',
				  firstDay: 0,
				  isRTL: false,
				  showMonthAfterYear: true,
				  yearSuffix: ''};
				  
			$.datepicker.setDefaults($.datepicker.regional['ko']);

			
		    $( "#datepicker" ).datepicker({
		    	   showOn: 'button',
		    	   buttonImage: 'images/cal.png', 
		    	   buttonImageOnly: true,
		    	   changeMonth: true,
		    	   buttonText: "달력",
		    	   changeYear: true,
		    	   showButtonPanel: true,
		    }).datepicker("setDate","1990-08-15");
		    
    });    
    function trim(str){ //공백제거 함수
		var s = str.replace(/^\s+|\s+$/g,"");
		
		return s;
	}
    
    function ch(obj){
    	var em = document.getElementsByName("email");
    	
    	if(obj.selectedIndex != 0)
    		em[1].value = obj.value;
    	
    	if(obj.selectedIndex == 7)
    		em[1].focus();
    }
    
    function tt(){
    	var c = document.getElementById("c_num");
    	
    	var param = "c_num="+encodeURIComponent(c.value);
    	
    	sendRequest("get_course_date.inc",param,r_date,"post",true);
    }
    function r_date(){
    	if(xhr.readyState == 4 && xhr.status == 200){
    		document.getElementById("edu_date").value = xhr.responseText;
    	}
    }
    
    function checkID(){
		//아이디가 입력되는 입력란 객체 가져오기
		var s_id = document.getElementById("m_id");
		
		//사용자가 입력한 id값 가져오기
		var str = trim(s_id.value);
		
		//alert(str);
		//사용자가 입력한 id값의 길이가 4자 이상일 때
		if(str.length > 3){
			//파라미터 작업
			var param = "id="+encodeURIComponent(str);
			
			sendRequest("check_id.inc", param, res, "post", true);
		}else
			document.getElementById("id_msg").innerHTML = "<strong>*</strong> 4~20자의 범위에서 영문자와 숫자만 가능합니다.";
	}
	
	//도착함수
	function res(){
		if(xhr.readyState == 4 && xhr.status == 200){
			document.getElementById("id_msg").innerHTML = xhr.responseText;
		}
	}
	function checkPWD(){
		//아이디가 입력되는 입력란 객체 가져오기
		var s_pwd = document.getElementById("m_pwd");
		
		//사용자가 입력한 id값 가져오기
		var str = trim(s_pwd.value);
		
		//alert(str);
		//사용자가 입력한 id값의 길이가 6자 이상일 때
		if(str.length > 5){
			//파라미터 작업
			var param = "pwd="+encodeURIComponent(str);
			
			sendRequest("check_pw.inc", param, res2, "post", true);
		}else
			document.getElementById("pwd_msg").innerHTML = "<strong>*</strong> 문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
	}
	
	//도착함수
	function res2(){
		if(xhr.readyState == 4 && xhr.status == 200){
			document.getElementById("pwd_msg").innerHTML = xhr.responseText;
		}
	}
	function check_pw(){
		var p = document.getElementsByName("m_pwd");
		var p1 = document.getElementsByName("m_pwd1");
		var msg = document.getElementById("pwd_msg1");
		var chk = document.getElementById("chk_id");
		
		if(p[0].value != p1[0].value)
			msg.innerHTML = "비밀번호가 다릅니다.";
		else
			msg.innerHTML = "";
	}
	
	///////////////////////////////////////////////////////////////////////////////
	
	function sendData(){
		
		var f = document.forms[0];
		var r1 = document.getElementById("radio1");
		var r2 = document.getElementById("radio2");
		var chk = document.getElementById("chk_id");
		var chk_pw = document.getElementById("chk_pw");
		var p = document.getElementsByName("m_pwd");
		var p1 = document.getElementsByName("m_pwd1");
		var id = document.getElementById("m_id");
		if(r2.checked){
			if(chk == null || chk.className != "success"){
				alert("사용가능한 ID를 입력하세요");
				id.focus();
				return;
			}
			if(chk_pw == null || chk_pw.className != "success"){
				alert("비밀번호를 규칙에 맞도록 정확히 입력하세요");
				p.focus();
				return;
			}
			if(p[0].value.length == 0 ||p1[0].value.length == 0 ||p[0].value != p1[0].value){
				alert("비밀번호가 다릅니다.");
				p1.focus();
				return;
			}
			var name = trim(f.name.value);
			f.name.value = name;
			if(name.length == 0){
				alert("이름을 입력하세요.");
				f.name.focus();
				return;
			}
			
			var email = document.getElementsByName("email");
			var e1 = trim(email[0].value);
			email[0].value = e1;
			if(e1.length == 0){
				alert("이메일을 입력하세요.");
				email[0].focus();
				return;
			}
			
			var e2 = trim(email[1].value);
			email[1].value = e2;
			if(e2.length == 0){
				alert("이메일을 입력하세요.");
				email[1].focus();
				return;
			}
			
			var phone = document.getElementsByName("phone");
			
			for(var i=0; i<phone.length; i++){
				var ph1 = trim(phone[i].value);
				phone[i].value = ph1;
				if(ph1.length == 0){
					alert("전화번호를 정확히 입력하세요.");
					phone[i].focus();
					return;
				}
			}
			
			
		}else{
			if(chk == null || chk.className != "success"){
				alert("사용가능한 ID를 입력하세요");
				id.focus();
				return;
			}
			
			
			if(p[0].value.length == 0 ||p1[0].value.length == 0 ||p[0].value != p1[0].value){
				alert("비밀번호가 다릅니다.");
				p1.focus();
				return;
			}
			var name = trim(f.name.value);
			f.name.value = name;
			if(name.length == 0){
				alert("이름을 입력하세요.");
				f.name.focus();
				return;
			}
			
			var email = document.getElementsByName("email");
			var e1 = trim(email[0].value);
			email[0].value = e1;
			if(e1.length == 0){
				alert("이메일을 입력하세요.");
				email[0].focus();
				return;
			}
			
			var e2 = trim(email[1].value);
			email[1].value = e2;
			if(e2.length == 0){
				alert("이메일을 입력하세요.");
				email[1].focus();
				return;
			}
			
			var phone = document.getElementsByName("phone");
			
			for(var i=0; i<phone.length; i++){
				var ph1 = trim(phone[i].value);
				phone[i].value = ph1;
				if(ph1.length == 0){
					alert("전화번호를 정확히 입력하세요.");
					phone[i].focus();
					return;
				}
			}
			
			var post = trim(f.post_num.value);
			f.post_num.value = post;
			if(post.length == 0){
				alert("우편번호를 선택하세요.");
				f.post_num.focus();
				return;
			}
			var addr = trim(f.addr.value);
			f.addr.value = addr;
			if(addr.length == 0){
				alert("주소를 선택하세요.");
				f.addr.focus();
				return;
			}
			var sch = trim(f.school.value);
			f.school.value = sch;
			if(sch.length == 0){
				alert("최종학교를 입력하세요.");
				f.school.focus();
				return;
			}
			var maj = trim(f.major.value);
			f.major.value = maj;
			if(maj.length == 0){
				alert("전공을 입력하세요.");
				f.major.focus();
				return;
			}
			
			var classify = trim(f.classify.value);
			f.classify.value = classify;
			if(classify.length == 0){
				alert("졸업여부를 선택하세요.");
				f.classify.focus();
				return;
			}
			
			var c_num = trim(f.c_num.value);
			f.c_num.value = c_num;
			if(c_num.length == 0){
				alert("지원하신 과정을 반드시 선택하셔야 합니다.");
				f.c_num.focus();
				return;
			}
		}
		f.submit();
	}
	
	function init(){
		
		var ch = document.getElementById("ch");
		
		if(ch != null)
			$(".pop_ok").fadeIn();
		
	}
</script>
<style type="text/css">
.success {
	color: blue;
	font-weight: bold;
}

.fail {
	color: red;
	font-weight: bold;
}
</style>
</head>

<body onload="init()">


		<jsp:include page="/jsp/common/menu.jsp" flush="true"></jsp:include>
		<jsp:include page="/jsp/common/left.jsp"></jsp:include>

		<div class="main_con">
			<div class="sub_layout">
				<div class="location">
					<img src="images/home.jpg" alt="" /><span>회원가입</span>
				</div>
				<div class="sub_box1">
					<div class="sub_layout2">
						<div class="sub_tit5">
							<h1>회원가입</h1>
							<p>인크레파스에 오신 것을 환영합니다.</p>
						</div>
						<div class="join_tab">
							<a id="tab1" class="on"><strong><img
									src="images/join_tab_img1.png" alt="인크레파스 회원가입" /></strong>약관동의</a><a
								id="tab2"><strong><img
									src="images/join_tab_img2.png" alt="" /></strong>정보입력</a><a id="tab3"><strong><img
									src="images/join_tab_img3.png" alt="" /></strong>회원가입 완료</a>
						</div>
						<div id="box1">
							<div class="join_box3" id="t​erms">
								<div class="join_box3_1">
									<h1>이용약관</h1>
									<div class="join_box3_2">제 1 조 (목적) 본 약관은 주식회사 인크레파스 (이하
										‘회사’라 한다)에서 제공하는 인터넷 관련 서비스(이하 ‘서비스’라 하며, 접속 가능한 유,무선 단말기의 종류와
										상관없이 이용 가능한 사이트가 제공하는 모든 서비스를 의미합니다.)를 이용함에 있어 회원의 권리•의무 및
										책임사항을 규정함을 목적으로 합니다. 제 2 조 (정의) 1. ‘사이트’ 란 ‘회사’가 상품을 회원에게 제공하기
										위하여 컴퓨터 등 정보통신설비를 이용하여 ‘상품 등’을 거래할 수 있도록 설정한 가상의 영업장을 말하며,
										사이버몰을 운영하는 사업자의 의미로도 사용합니다. 현재 ‘회사’가 운영하는 ‘사이트’는
										http://www.increpas.com 이며, 더불어 서비스 하는 안드로이드, iOS 환경의 서비스를 포함한
										모바일웹과 앱을 포함 합니다. 2. ‘회원’이라 함은 ‘사이트’에 개인정보를 제공하여 회원등록을 한 자로서,
										‘사이트’에 정해진 회원 가입 방침에 따라 ‘사이트’의 정보를 지속적으로 제공받으며, ‘사이트’가 제공하는
										‘서비스’를 계속적으로 이용할 수 있는 자를 말합니다. 3. ‘비밀번호’라 함은 회원의 동일성 확인과 회원의
										권익 및 비밀보호를 위하여 회원 스스로가 설정하여 ‘사이트’에 등록한 영문과 숫자의 조합을 말합니다. 4. 본
										약관에서 정의되지 않은 용어는 관계법령이 정하는 바에 따르며, 그 외에는 일반적인 상관례에 의합니다. 제 3 조
										(약관의 명시와 설명 및 개정) 1. ‘회사’는 이 약관의 내용과 상호 및 대표자 이름, 소재지 주소,
										전화번호, 전자우편주소, 사업자등록번호 등을 회원이 쉽게 알 수 있도록 ‘사이트’의 초기 ‘서비스’ 화면에
										게시합니다. 다만, 약관의 구체적 내용은 회원이 연결화면을 통하여 볼 수 있습니다. 2. ‘회사’는 『전자상거래
										등에서의 소비자보호에 관한 법률』, 『약관의 규제 등에 관한 법률』, 『전자거래 기본법』, 『전자 서명법』,
										『정보통신망 이용촉진 등에 관한 법률』, 『소비자기본법』 등 관계법령을 위배하지 않는 범위에서 이 약관을 개정할
										수 있습니다. 3. ‘회사’가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께
										‘사이트’의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 4. ‘회사’가 약관을 개정할
										경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는
										개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 회원이 개정약관 조항의 적용을 받기를 원하는
										뜻을 제3항에 의한 개정약관의 공지기간 내에 ‘회사’에 송신하여 ‘회사’의 동의를 받은 경우에는 개정약관 조항이
										적용됩니다. 5. 제3항에 따라 공지된 적용일자 이후에 회원이 ‘회사’의 ‘서비스’를 계속 이용하는 경우에는
										개정된 약관에 동의하는 것으로 봅니다. 개정된 약관에 동의하지 아니하는 회원은 언제든지 자유롭게 ‘서비스’
										이용계약을 해지할 수 있습니다. 제 4 조 (약관 외 준칙) 이 약관에서 정하지 아니한 사항과 이 약관의 해석에
										관하여는 『전자상거래 등에서의 소비자 보호에 관한 법률』 등 관련법령의 규정과 일반 상관례에 따릅니다. 제 5
										조 (이용계약의 성립) 1. 이용계약은 회원이 되고자 하는 자(이하 ‘가입신청자’)가 약관의 내용에 동의를
										하고, ‘회사’가 정한 가입양식에 따라 회원정보(전자우편주소, 비밀번호, or 소셜네트워크를 통한 회원가입 정보
										등)를 기입하여 회원가입신청을 하고 ‘회사’가 이러한 신청에 대하여 승인함으로써 체결됩니다. 2. ‘회사’는
										다음 각 호에 해당하는 신청에 대하여는 승인을 하지 않거나 사후에 이용계약을 해지할 수 있습니다. 가.
										‘가입신청자’가 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우. 다만, 회원자격 상실 후 3개월이
										경과한 자로서 ‘회사’의 회원 재가입 승낙을 얻은 경우에는 예외로 함 다. 등록내용에 허위의 정보를 기재하거나,
										기재누락, 오기가 있는 경우 라. 회원가입일 현재 만 14세 미만인 경우 마. 이미 가입된 회원과 이름 및
										전자우편주소가 동일한 경우 바. 부정한 용도 또는 영리를 추구할 목적으로 본 ‘서비스’를 이용하고자 하는 경우
										사. 회원의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우 아. 기타 이
										약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우 및 ‘회사’가 합리적인 판단에 의하여 필요하다고
										인정하는 경우 3. ‘회사’는 ‘서비스’ 관련 설비의 여유가 없거나, 기술상 또는 업무상 문제가 있는 경우에는
										승낙을 유보할 수 있습니다. 4. 제2항에 따라 회원가입신청의 승낙을 하지 아니하거나 유보한 경우, 이 경우
										‘회사’는 원칙적으로 이를 ‘가입신청자’에게 알리도록 합니다. 5. 이용계약의 성립시기는 ‘회사’가 가입완료를
										신청절차상에서 표시한 시점으로 합니다. 6. ‘회사’는 회원에 대해 ‘회사’정책에 따라 등급별로 구분하여
										이용시간, 이용횟수, ‘서비스’ 메뉴 등을 세분하여 이용에 차등을 둘 수 있습니다. 7. ‘회사’는 회원에
										대하여 『영화 및 비디오물의 진흥에 관한 법률』 및 『청소년 보호법』 등에 따른 등급 및 연령준수를 위해
										이용제한이나 등급별 제한을 할 수 있습니다. 제 6 조 (개인정보의 변경) 회원은 개인정보관리화면을 통하여
										언제든지 본인의 개인정보를 열람하고 수정할 수 있습니다. 제 7 조 (개인정보의 보호) 1. ‘회사’는 회원의
										개인정보를 보호하기 위하여 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 등 관계법령에서 정하는 바를
										준수합니다. 2. ‘회사’는 회원의 개인정보를 보호하기 위하여 개인정보취급방침을 제정, ‘서비스’ 초기화면에
										게시합니다. 다만, 개인정보취급방침의 구체적 내용은 연결화면을 통하여 볼 수 있습니다. 3. ‘회사’는
										개인정보취급방침에 따라 회원의 개인정보를 최대한 보호하기 위하여 노력합니다. 4. ‘회사’의 공식 ‘사이트’
										이외의 링크된 사이트에서는 ‘회사’의 개인정보취급방침이 적용되지 않습니다. 링크된 사이트 및 ‘상품 등’을
										제공하는 제3자의 개인정보 취급과 관련하여는 해당 ‘사이트’ 및 제3자의 개인정보취급방침을 확인할 책임이
										회원에게 있으며, ‘회사’는 이에 대하여 책임을 부담하지 않습니다. 5. ‘회사’는 다음과 같은 경우에 법이
										허용하는 범위 내에서 회원의 개인정보를 제3자에게 제공할 수 있습니다. 가. 수사기관이나 기타 정부기관으로부터
										정보제공을 요청 받은 경우 나. 회원의 법령 또는 약관의 위반을 포함하여 부정행위확인 등의 정보보호업무를 위해
										필요한 경우 다. 기타 법률에 의해 요구되는 경우 라. 판매자 또는 배송업체 등에게 거래 및 배송 등에 필요한
										최소한의 회원의 정보(성명, 주소, 전화번호)를 제공하는 경우 마. 구매가 성사된 때에 그 이행을 위하여 필요한
										경우와 구매가 종료된 이후에도 반품, 교환, 환불, 취소 등을 위하여 필요한 경우 제 8 조 (이용계약의 종료)
										1. 회원의 해지 가. 회원은 언제든지 ‘회사’에게 해지의사를 통지함으로써 이용계약을 해지할 수 있습니다. 나.
										이용계약은 회원의 해지의사가 ‘회사’에 도달한 때에 종료됩니다. 다. 본 항에 따라 해지를 한 회원은 이 약관이
										정하는 회원가입절차와 관련조항에 따라 회원으로 다시 가입할 수 있습니다. 2. 회사의 해지 가. ‘회사’는
										다음과 같은 사유가 있는 경우, 이용계약을 해지할 수 있습니다. 이 경우 ‘회사’는 회원에게 전자우편주소, 전화
										등 기타의 방법을 통하여 해지사유를 밝혀 해지의사를 통지합니다. 다만 ‘회사’는 해당 회원에게 사전에 해지사유에
										대한 의견진술의 기회를 부여할 수 있습니다. ① 제5조 제2항에서 정하고 있는 이용계약의 승낙거부사유가 있음이
										확인된 경우 ② 회원이 ‘회사’나 다른 회원 기타 타인의 권리나 명예, 신용 기타 정당한 이익을 침해하는 행위를
										한 경우 ③ 기타 회원이 이 약관에 위배되는 행위를 하거나 이 약관에서 정한 해지사유가 발생한 경우 나.
										이용계약은 ‘회사’가 해지의사를 회원에게 통지함으로써 종료됩니다. 이 경우 ‘회사’는 해지의사를 회원이 등록한
										전자우편주소로 발송하거나 ‘회사’의 게시판에 게시함으로써 통지에 갈음합니다. 다. 이용계약이 종료되는 경우
										회원의 적립금 및 쿠폰은 소멸되며, 환불 등의 처리에 관하여는 ‘회사’의 환불규정에 의합니다. 라. 이용계약의
										종료와 관련하여 발생한 손해는 이용계약이 종료된 해당 회원이 책임을 부담하고 ‘회사’는 일체의 책임을 지지
										않습니다. 제 9 조 (회원탈퇴 및 자격 상실) 1. 회원은 ‘회사’에 언제든지 탈퇴를 요청할 수 있으며
										‘회사’는 회원탈퇴에 관한 규정에 따라 이를 처리합니다. 2. 회원이 다음 각 호의 사유에 해당하는 경우,
										‘회사’는 회원자격을 제한 및 정지시킬 수 있습니다. 가. 다른 사람의 ‘사이트’ 이용을 방해하거나 그 정보를
										도용하는 등 전자상거래질서를 위협하는 경우 나. ‘사이트’를 이용하여 법령과 이 약관이 금지하거나 공서양속에
										반하는 행위를 하는 경우 다. 기타 다음과 같은 행위 등으로 ‘사이트’의 건전한 운영을 해하거나 ‘사이트’의
										업무를 방해하는 경우 ① ‘사이트’의 운영과 관련하여 근거 없는 사실 또는 허위의 사실을 적시하거나 유포하여
										‘회사’의 명예를 실추시키거나 ‘사이트’의 신뢰성을 해하는 경우 ② ‘사이트’의 이용과정에서 직원에게 폭언,
										협박 또는 음란한 언행 등으로 ‘사이트’의 운영을 방해하는 경우 ③ ‘사이트’를 통해 ‘상품 등’을 구매한 후
										정당한 이유 없이 상습 또는 반복적으로 취소?반품하여 ‘회사’의 업무를 방해하는 경우 ④ ‘사이트’를 통해
										구입한 ‘상품 등’에 특별한 하자가 없는데도 불구하고 일부 사용 후 상습적인 취소?전부 또는 일부 반품 등으로
										‘회사’의 업무를 방해하는 경우 3. ‘회사’가 회원자격을 제한?정지시킨 후 동일한 행위가 2회 이상 반복되거나
										30일 이내에 그 사유가 시정되지 아니하는 경우 ‘회사’는 회원자격을 상실시킬 수 있습니다. 4. 재판매의
										목적으로 ‘사이트’에서 ‘상품 등’을 중복 구매하는 등 ‘사이트’의 거래질서를 방해하는 경우 ‘회사’는 당해
										회원의 회원자격을 상실시킬 수 있습니다. 5. ‘회사’가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다.
										이 경우 회원에게 이를 제8조 제2항 (나)목에 따라 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.

										제 10 조 (회원의 ID 및 비밀번호에 대한 의무) 1. ID(전자우편번호 및 소셜네트워크 연동으로 인한
										ID)와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 소홀히 하여 발생한 모든 민?형사상의 책임은 회원
										자신에게 있습니다. 2. 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다. 3. 회원이
										자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 즉시 ‘회사’에 통보하고
										‘회사’의 조치가 있는 경우에는 그에 따라야 합니다. 4. 회원이 제3항에 따른 통지를 하지 않거나 ‘회사’의
										조치에 응하지 아니하여 발생하는 모든 불이익에 대한 책임은 회원에게 있습니다. 제 11 조 (회원의 의무) 1.
										회원은 관계법령, 이 약관의 규정, 이용안내 등 ‘회사’가 통지하는 사항을 준수하여야 하며, 기타 ‘회사’
										업무에 방해되는 행위를 하여서는 안됩니다. 2. 회원은 ‘서비스’ 이용과 관련하여 다음 각 호의 행위를 하여서는
										안됩니다. 가. ‘서비스’ 신청 또는 변경 시 허위내용의 등록 나. 타인의 정보도용 다. ‘사이트’에 게시된
										정보의 허가 받지 않은 변경 라. ‘회사’가 정한 정보 이외의 정보(컴퓨터 프로그램 등)의 송신 또는 게시 마.
										‘회사’ 및 기타 제3자의 저작권 등 지적재산권에 대한 침해 바. ‘회사’ 및 기타 제3자의 명예를 손상시키거나
										업무를 방해하는 행위 사. 외설 또는 폭력적인 메시지?화상?음성 기타 공서양속에 반하는 정보를 ‘회사’에 공개
										또는 게시하는 행위 아. ‘회사’의 동의 없이 영리를 목적으로 ‘서비스’를 사용하는 행위 자. 기타 관계법령이나
										‘회사’에서 정한 규정에 위배되는 행위 제 12 조 (회원의 게시물) 1. 회원이 작성한 게시물에 대한 모든
										권리 및 책임은 이를 게시한 회원에게 있으며, ‘회사’는 회원이 게시하거나 등록하는 ‘서비스’의 내용물이 다음
										각 항에 해당한다고 판단되는 경우에 사전통지 없이 삭제할 수 있고, 이에 대하여 ‘회사’는 어떠한 책임도 지지
										않습니다. 2. 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우 3. 공서양속에
										위반되는 내용일 경우 4. 범죄적 행위에 결부된다고 인정되는 경우 5. ‘회사’의 저작권, 제3자의 저작권 등
										기타 권리를 침해하는 내용인 경우 6. 회원이 ‘사이트’와 게시판에 음란물을 게재하거나 음란사이트를 링크하는
										경우 7. ‘회사’로부터 사전 승인 받지 아니한 상업광고, 판촉내용을 게시하는 경우 8. 해당 상품과 관련 없는
										내용인 경우 9. 정당한 사유 없이 당사의 영업을 방해하는 내용을 기재하는 경우 10. 기타 관계법령에
										위반된다고 판단되는 경우 제 13 조 (회원에 대한 통지) 1. ‘회사’가 회원에 대한 통지를 하는 경우,
										회원이 가입신청 시 ‘회사’에 제출한 전자우편주소나 SMS, PUSH 등으로 할 수 있습니다. 2. ‘회사’는
										불특정다수 회원에 대한 통지의 경우, 1주일 이상 ‘사이트’에 게시함으로써 개별 통지에 갈음할 수 있습니다.
										다만, 회원 본인의 거래에 관하여 중대한 영향을 미치는 사항에 대하여는 개별 통지합니다. 제 14 조
										(‘회사’의 의무) 1. ‘회사’는 관계법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이
										약관이 정하는 바에 따라 지속적이고, 안정적으로 ‘상품 등’을 제공하는데 최선을 다하여야 합니다. 2.
										‘회사’는 회원이 안전하게 ‘서비스’를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위한 보안시스템을
										갖추어야 하며 개인정보취급방침을 공시하고 준수합니다. 3. ‘회사’는 회원으로부터 제기되는 의견이나 불만이
										정당하고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한
										경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다. 제 15 조 (개별 서비스에 대한 약관 및 이용조건)
										‘회사’는 제공하는 ‘서비스’내의 개별 서비스에 대한 별도의 약관 및 이용조건을 둘 수 있으며 개별 서비스에서
										별도로 적용되는 약관에 대한 동의는 회원이 개별 서비스를 최초로 이용할 경우 별도의 동의절차를 거치게 됩니다.
										이 경우 개별 서비스에 대한 이용약관 등이 본 약관에 우선합니다. 제 16 조 (‘서비스’ 이용시간)
										‘서비스’의 이용은 ‘회사’의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일 24시간을 원칙으로
										합니다. 다만 정기점검 등의 필요로 ‘회사’가 정한 날이나 시간은 제외됩니다. 정기점검시간은 ‘서비스’제공화면에
										공지한 바에 따릅니다. 제 17 조 (‘서비스’ 이용책임) 회원은 ‘회사’가 서명한 명시적인 서면에 구체적으로
										허용한 경우를 제외하고는 ‘서비스’를 이용하여 상품을 판매하는 영업활동을 할 수 없으며 특히 해킹, 돈벌이
										광고, 음란사이트 등을 통한 상업행위, 상용S/W 불법배포 등을 할 수 없습니다. 이를 어겨 발생한 영업활동의
										결과 및 손실, 관계기관에 의한 법적 조치 등에 관해서는 ‘회사’가 책임을 지지 않습니다. 제 18 조
										(‘서비스’ 제공의 중지) 1. ‘회사’는 다음 각 호에 해당하는 경우 ‘서비스’ 제공을 중지할 수 있습니다.
										가. 컴퓨터 등 정보통신설비의 보수점검?교체 및 고장, 통신의 두절 등의 사유가 발생한 경우 나.
										『전기통신사업법』에 규정된 기간통신사업자가 전기통신 ‘서비스’를 중지했을 경우 다. 기타 불가항력적 사유가 있는
										경우 2. ‘회사’는 국가비상사태, 정전, ‘서비스’ 설비의 장애 또는 ‘서비스’ 이용의 폭주 등으로 정상적인
										‘서비스’ 이용에 지장이 있는 때에는 ‘서비스’의 전부 또는 일부를 제한하거나 정지할 수 있습니다. 3.
										‘회사’가 ‘서비스’ 제공을 일시적으로 중단할 경우 서비스 일시 중단사실과 그 사유를 ‘사이트’ 초기화면에
										통지합니다. 제 19 조 (정보의 제공 및 광고의 게재) 1. ‘회사’는 회원이 ‘서비스’ 이용 중 필요하다고
										인정되는 다양한 정보를 공지사항 또는 전자우편이나, SMS, 전화 등의 방법으로 회원에게 제공할 수 있습니다.
										다만, 회원은 관련법에 따른 거래관련정보 및 고객문의 등에 대한 답변 등을 제외하고는 언제든지 전자우편 등에
										대해서 수신 거절을 할 수 있습니다. 2. ‘회사’는 ‘서비스’의 운영과 관련하여 ‘서비스’ 화면, 홈페이지,
										전자우편 등에 광고를 게재할 수 있습니다. 광고가 게재된 전자우편 등을 수신한 회원은 수신거절을 ‘회사’에게 할
										수 있습니다. 제 20 조 (구매신청) 1. 회원은 본 약관 및 ‘회사’가 정한 규정에 따라 아래 또는 이와
										유사한 방법에 의하여 구매를 신청하여야 합니다. 가. ‘상품 등’의 선택 나. 구매자 성명, 주소, 전화번호,
										전자우편주소, 수취인의 성명, 배송지 정보, 전화번호 입력 다. 결제 시 유의사항에 대한 확인 라. 이 약관에
										동의한다는 표시(예, 마우스 클릭) 2. ‘회사’는 회원의 구매신청이 있는 경우 회원에게 수신확인통지를 합니다.
										3. 전 항의 수신확인통지를 받은 회원은 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시
										구매신청 변경 및 취소를 요청할 수 있습니다. 다만, 이미 대금을 지불한 경우에는 제24조 청약철회 등에 관한
										규정에 따릅니다. 제 21 조 (대금지급방법) 1. ‘회사’에서 구매한 상품 또는 쿠폰에 대한 대금지급방법은
										다음 각 호의 하나로 할 수 있습니다. 가. 신용카드 결제 나. 실시간 계좌이체 다. 에스크로 결제 라.
										무통장입금 마. 기타 ‘회사’가 추가 지정하는 결제 수단(할인쿠폰, 스마트폰 앱 등) 2. 회원이 구매대금의
										결제와 관련하여 입력한 정보 및 그 정보와 관련하여 발생한 책임과 불이익은 전적으로 회원이 부담합니다. 제 22
										조 (‘상품 등’의 공급) 1. ‘회사’는 회원의 ‘상품 등’의 공급에 관하여 별도의 약정이 없는 이상 회원이
										‘상품 등’을 구매한 날부터 빠른 시일 이내에 ‘상품 등’을 배송할 수 있도록 주문제작, 포장 등 기타의 필요한
										조치를 취합니다. 2. ‘회사’는 회원이 ‘상품 등’의 공급절차 및 진행사항, ‘상품 등’에 대한 구매
										결제내역을 확인할 수 있도록 적절한 조치를 하여야 하며, ‘상품 등’의 취소방법 및 절차를 안내하여야 합니다.
										3. ‘회사’는 회원이 구매한 ‘상품 등’에 대해 배송수단, 수단별 배송비용, 배송비용 부담자, 수단별 배송기간
										등을 명시합니다. 4. ‘회사’와 고객간에 상품의 인도시기 및 쿠폰의 제공시기에 관하여 별도의 약정이 있는
										경우에는 본 약관에 우선합니다. 제 23 조 (환급) ‘회사’는 회원이 구매 신청한 ‘상품 등’이 품절 등의
										사유로 인도 또는 제공할 수 없을 때에는 지체 없이 그 사유를 회원에게 통지하여야 하고, 사전에 ‘상품 등’의
										대금을 받은 경우에는 대금을 받은 날로부터 7영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다. 제 24
										조 (청약철회 등) 1. ‘회사’의 ‘상품 등’의 구매취소 및 환불 규정은 『전자상거래 등에서의 소비자보호에
										관한 법률』 등 관련 법령을 준수합니다. 2. ‘회사’와 ‘상품 등’의 구매에 관한 계약을 체결한 회원은
										수신확인의 통지를 받은 날(전자우편 또는 SMS 문자통지 등을 받은 날) 또는 ‘상품 등’의 공급을 받은
										날로부터 7일 이내에는 청약을 철회할 수 있습니다. 3. 회원은 ‘상품 등’을 배송 받은 경우 아래 각 호에
										해당하는 경우에는 교환 및 반품, 환불을 할 수 없습니다. 가. 회원에게 책임 있는 사유로 ‘상품 등’이 멸실
										또는 훼손된 경우(다만, ‘상품 등’의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수
										있습니다.) 나. 회원의 사용 또는 일부 소비에 의하여 ‘상품 등’의 가치가 현저히 감소한 경우 다. 시간의
										경과에 의하여 재판매가 곤란할 정도로 ‘상품 등’의 가치가 현저히 감소한 경우 라. 같은 성능을 지닌 ‘상품
										등’으로 복제가 가능한 경우 그 원본인 ‘상품 등’의 포장을 훼손한 경우 마. 회사가 특정 쿠폰 또는 상품 등에
										대하여 청약철회 제한에 관해 사전에 고지한 경우 5. 회원은 제3항 및 제4항의 규정에 불구하고 ‘상품 등’의
										내용이 표시?광고 내용과 다르거나 계약 내용과 다르게 이행된 때에는 당해 ‘상품 등’을 공급받은 날부터 3일
										이내, 그 사실을 안 날 또는 알 수 있었던 날부터 10일 이내에 청약철회 등을 할 수 있습니다. 제 25 조
										(청약철회 등의 효과) 1. 회원이 구매한 ‘상품 등’을 취소 또는 환불하는 경우 ‘회사’는 그 처리 결과에
										대해 제13조(회원에 대한 통지)에 정한 방법으로 통지합니다. 2. ‘회사’는 회원으로부터 쿠폰취소 요청 또는
										상품 등을 반환 받은 경우 7영업일 이내에 이미 지급받은 대금을 환급합니다. 이 경우 ‘회사’가 회원에게 재화
										등의 환급을 지연할 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한
										지연이자를 지급합니다. 3. 청약철회 등의 경우 공급받은 ‘상품 등’의 반환에 필요한 비용은 회원이 부담합니다.
										다만, ‘상품 등’의 내용이 표시?광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우
										‘상품 등’에 필요한 비용은 ‘회사’가 부담합니다. 5. 회원의 단순변심에 의한 취소일 경우 환불처리에 발생하는
										수수료와 기타 제반 비용은 회원이 부담합니다. 6. 기타 본 약관 및 ‘사이트’의 이용안내에 규정되지 않은 취소
										및 환불에 대한 사항에 대해서는 소비자 피해보상규정에서 정한 바에 따릅니다. 제 26 조 (‘상품 등’의 취소
										및 환불의 특칙) 상품의 반품에 따른 환불은 반품하는 상품이 판매자에게 도착되고, 반품 사유 및 반품 배송비
										부담자가 확인된 이후에 이루어집니다. 제 27 조 (게시물의 관리) 1. 회원의 게시물이 『정보통신망 이용촉진
										및 정보보호 등에 관한 법률』 및 『저작권』등 관계법령에 위반되는 내용을 포함하는 경우, 권리자는 관계법령이
										정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, ‘회사’는 관계법령에 따라 조치를
										취하여야 합니다. 2. ‘회사’는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가
										있거나 기타 ‘회사’ 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 ‘게시물’에 대해 임시조치 등을
										취할 수 있습니다. 3. 본 조에 따른 세부절차는 『정보통신망 이용촉진 및 정보보호 등에 관한 법률』 및
										『저작권법』이 규정한 범위 내에서 ‘회사’가 정한 ‘게시중단요청서비스’에 따릅니다. 제 28 조 (면책조항)
										1. ‘회사’는 천재지변 또는 이에 준하는 불가항력으로 인하여 ‘서비스’를 제공할 수 없는 경우에는 ‘서비스’
										제공에 관한 책임이 면제됩니다. 2. ‘회사’는 회원의 귀책사유로 인한 ‘서비스’ 이용의 장애에 대하여 책임을
										지지 않습니다. 3. ‘회사’는 회원이 ‘서비스’를 이용하여 기대하는 수익을 상실한 것에 대하여 책임을 지지
										않으며, 그 밖의 ‘서비스’를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다. 4. ‘회사’는
										회원이 게재한 정보, 자료, 사실의 신뢰도, 정확성 등 내용에 관해서는 책임을 지지 않습니다. 5. 회원이
										발송한 메일 내용에 대한 법적인 책임은 사용자에게 있습니다. 6. ‘회사’는 회원간 또는 회원과 제3자 상호간에
										‘서비스’를 매개로 하여 거래 등을 한 경우에는 책임이 면제됩니다. 7. ‘회사’는 무료로 제공되는 ‘서비스’
										이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다. 제 29 조 (분쟁해결) 1. ‘회사’는
										회원이 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위해서 피해보상처리 기구를 설치,
										운영합니다. 2. ‘회사’는 회원으로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만
										신속한 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 즉시 통보합니다. 제 30 조 (준거법 및
										관할법원) 1. 이 약관의 해석 및 ‘회사’와 회원간의 분쟁에 대하여는 대한민국의 법을 적용합니다. 2.
										‘서비스’ 이용 중 발생한 회원과 ‘회사’간의 소송은 민사소송법에 의한 관할법원에 제소합니다. 부칙 1. 이
										약관은 2016년 1월 1일부터 시행합니다. 2. 이 개정약관은 시행일 이후에 체결되는 계약에만 적용되고 그
										이전에 체결된 계약에 대해서는 개정전의 약관조항을 그대로 적용합니다.</div>
									<div class="agree mab20" id="p_info">
										<input type="checkbox" id="chk1"><label for="chk1">이용약관에
											동의합니다.</label>
									</div>
									<h1>개인정보취급방침</h1>
									<div class="join_box3_2">회사의 개인정보 수집 목적은 최적화된 맞춤화 서비스를
										제공하기 위함이며, 회사는 서비스 제공을 원활하게 하기 위해 필요한 최소한의 정보만을 수집하고 있습니다. 서비스
										이용에 따른 대금결제, 물품배송 및 환불 등에 필요한 정보를 추가로 수집할 수 있습니다. 회사는 개인정보를
										수집, 이용목적 이외에 다른 용도로 이용하거나 회원의 동의 없이 제3자에게 이를 제공하지 않습니다. [개인정보
										수집항목] 회사는 회원가입, 쇼핑몰 이용, 서비스 신청 및 제공 등을 위해 다음과 같은 개인정보를 수집하고
										있습니다. 회사는 개인의 주민등록번호 및 아이핀 정보를 받지 않습니다. 가. 개인정보 항목 회원 필수항목:
										전자우편주소, 페이스북 ID 및 페이스북에서 제공하는 정보, 트위터 ID 및 트위터에서 제공하는 정보, 구글+
										ID 및 구글에서 제공하는 정보 비회원 필수항목: 주문자 이름, 주문 결제자 주소, 수취인 이름, 배송지 정보,
										연락처, 고객메모 부가항목: 주문자 이름, 주문 결제자 주소, 수취인 이름, 배송지 정보, 연락처, 환불요청 시
										환불계좌번호 다만, 서비스 이용과정에서 서비스 이용기록, 접속 로그, 쿠키, 접속 IP 정보, 결제기록 등이
										생성되어 수집될 수 있습니다. 나. 수집방법: 쇼핑몰 회원가입 시의 회원가입 정보 및 고객센터를 통한 전화 및
										온라인 상담 [개인정보 보유 및 이용기간] 회사는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당
										개인정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이
										관계법령에서 정한 일정한 기간 동안 회원 개인정보를 보관합니다. 가. 상법 등 법령에 따라 보존할 필요성이 있는
										경우 ① 표시 • 광고에 관한 기록 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률 보존기간: 6개월 ②
										계약 또는 청약철회 등에 관한 기록 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률 보존기간: 5년 ③
										대금결제 및 재화 등의 공급에 관한 기록 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률 보존기간: 5년

										④ 소비자의 불만 또는 분쟁처리에 관한 기록 보존근거: 전자상거래 등에서의 소비자보호에 관한 법률 보존기간:
										3년 ⑤ 신용정보의 수집, 처리 및 이용 등에 관한 기록 보존근거: 신용정보의 이용 및 보호에 관한 법률
										보존기간: 3년 ⑥ 본인확인에 관한 기록보존 보존근거: 정보통신망 이용촉진 및 정보보호에 관한 법률 제44조의5
										및 시행령 제29조 보존기간: 6개월 ⑦ 접속에 관한 기록보존 보존근거: 통신비밀보호법 제15조의2 및 시행령
										제41조 보존기간: 3개월 나. 기타, 회원의 개별적인 동의가 있는 경우에는 개별 동의에 따른 기간까지
										보관합니다. [개인정보 제3자 제공] 가. 회사는 회원들의 개인정보를 개인정보의 수집이용 목적에서 고지한 범위
										내에서 사용하며, 회원의 사전 동의 없이 동 범위를 초과하여 이용하거나 원칙적으로 회원의 개인정보를 제 3자에게
										제공하지 않습니다. 단, 아래의 경우에는 예외로 합니다. ① 회원들이 사전에 공개 또는 제3자 제공에 동의한
										경우 ② 법령의 규정에 의거하나, 수사, 조사 목적으로 법령에 정해진 절차와 방법에 따라 수사기관 및 감독
										당국의 요구가 있는 경우 나. 회사가 제공하는 서비스를 통하여 주문 및 결제가 이루어진 경우, 상담 등 거래
										당사자간 원활한 의사소통 및 배송 등 거래이행을 위하여 관련된 정보를 필요한 범위 내에서 거래 당사자에게
										제공합니다. ① OO택배사: 주문자 이름, 수취인 이름 배송지 정보, 연락처 그 밖에 개인정보 제3자 제공이
										필요한 경우에는 합당한 절차를 통한 회원의 동의를 얻어 제3자에게 개인정보를 제공할 수 있습니다.</div>
									<div class="agree">
										<input type="checkbox" id="chk2" /><label for="chk2">개인정보취급방침에
											동의합니다.</label>
									</div>
								</div>
							</div>
							<div class="join_box4">
								<a href="#tab2" id="reg_bt1">등록하기</a><a href="#">취소</a>
							</div>
						</div>
						<div id="box2">
							<form action="add_member.inc" method="post">
								<div class="sub_box7">
									<h1 class="pat39">기본 정보 입력</h1>
									<table class="table3">
										<colgroup>
											<col width="140" class="tb_w100" />
											<col width="*" />
										</colgroup>
										<tbody>
											<tr>
												<th>회원구분</th>
												<td><input type="radio" id="radio1" name="m_div"
													value="1" /><label for="radio1">교육생</label><input
													type="radio" id="radio2" name="m_div" value="0"
													checked="checked" /><label for="radio2" class="on">웹회원</label>
												</td>
											</tr>
											<tr>
												<th>아이디</th>
												<td><input type="text" class="w183" name="m_id"
													onkeyup="checkID()" id="m_id" maxlength="20" /><span
													class="tb_txt1" id="id_msg"> <strong>*</strong>
														4~20자의 범위에서 영문자와 숫자만 가능합니다.
												</span></td>
											</tr>
											<tr>
												<th>비밀번호</th>
												<td><input type="password" class="w183" name="m_pwd"
													onkeyup="checkPWD()" id="m_pwd" maxlength="12" /><span
													class="tb_txt1" id="pwd_msg"> <strong>*</strong> 문자와
														숫자,특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능
												</span></td>
											</tr>
											<tr>
												<th>비밀번호 확인</th>
												<td><input type="password" class="w183" name="m_pwd1"
													onblur="check_pw()" maxlength="12" /><span id="pwd_msg1"></span></td>
											</tr>
											<tr>
												<th>이 름</th>
												<td><input type="text" class="w139" name="name" /></td>
											</tr>
											<tr>
												<th>생년월일</th>
												<td><input type="text" class="w139" id="datepicker"
													name="birthday" /><span class="tb_txt1 marR28"> 예:
														1990-12-01</span><input type="radio" id="radio3" name="gender"
													value="1" checked="checked" /><label for="radio3"
													class="on">남자</label><input type="radio" id="radio4"
													name="gender" value="2" /><label for="radio4">여자</label></td>
											</tr>
											<tr>
												<th>이메일</th>
												<td><input type="text" class="w139" name="email" /><span
													class="tb_txt4"> @ </span><input type="text"
													class="w139 mar8" name="email" />
													<div class="select_type1 w135">
														<div class="select_type1_1">
															<select id="select_em" onchange="ch(this)">
																<option>email선택</option>
																<option value="gmail.com">gmail.com</option>
																<option value="yahoo.com">yahoo.com</option>
																<option value="naver.com">naver.com</option>
																<option value="hanmail.net">hanmail.net</option>
																<option value="nate.com">nate.com</option>
																<option value="hotmail.com">hotmail.com</option>
																<option value="">직접입력</option>

															</select>
														</div>
													</div></td>
											</tr>
											<tr>
												<th>연락처</th>
												<td>
													<div class="select_type1 w65">
														<div class="select_type1_1">
															<select name="phone">
																<option value="010">010</option>
																<option value="011">011</option>
																<option value="019">019</option>
																<option value="018">018</option>
																<option value="017">017</option>
																<option value="016">016</option>
																<option value="02">02</option>
															</select>
														</div>
													</div>
													<span class="tb_txt2">-</span><input type="text"
													class="w75" name="phone" /><span class="tb_txt2">-</span><input
													type="text" class="w75" name="phone" />
												</td>
											</tr>
										</tbody>
									</table>
									<div id="info2">
										<h1 class="pat39">추가 정보 입력</h1>
										<table class="table3">
											<colgroup>
												<col width="140" class="tb_w100" />
												<col width="*" />
											</colgroup>
											<tbody>
												<tr>
													<th>주소</th>
													<td>
														<div>
															<input type="text" class="w75" id="sample2_postcode"
																name="post_num" /> <a
																href="javascript:sample2_execDaumPostcode()"
																class="btn_zip">우편번호 찾기</a>
														</div>
														<div class="pat7">
															<input type="text" class="w578" id="sample2_address"
																name="addr" />
														</div>
													</td>
												</tr>
												<tr>
													<th>최종학교</th>
													<td><input type="text" class="w183 marR28"
														name="school" /> <span class="tb_txt4_1"> <span
															class="tb_txt4_2"> <span class="tb_txt4">
																	전공 </span> <input type="text" class="w139 marR28" name="major" />
														</span>
													</span> <span class="tb_txt4"> 졸업여부 </span>
														<div class="select_type1 w135">
															<div class="select_type1_1">
																<select name="classify">
																	<option value="졸업">졸업</option>
																	<option value="졸업예정">졸업예정</option>
																	<option value="재학">재학</option>
																</select>
															</div>
														</div></td>
												</tr>
												<tr>
													<th>지원과정</th>
													<td>
														<div class="select_type1 w440">
															<div class="select_type1_1">
																<select onchange="tt()" name="c_num" id="c_num">

																	<option value="18">자바 개발자 과정 & 아두이노를 활용한 사물인터넷
																		(IoT) 엔지니어링 양성 과정</option>

																	<option value="20">자바머신러닝기반 응용SW엔지니어 양성과정</option>


																</select>
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th>교육기간</th>
													<td><input type="text" class="w183"
														readonly="readonly" id="edu_date"
														value="2018-05-24~2018-12-17" /></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="join_box4">
									<a href="javascript:sendData()">가입완료</a><a
										href="javascript:reset()">취소</a>
								</div>
							</form>
						</div>
						<div id="box3">
							<div class="sub_box10">
								<h1>
									<span>인크레파스</span> 회원 가입을<br>진심으로 축하합니다.
								</h1>
								<p>
									인크레파스 융합SW교육센터는 고용노동부 지정 직업능력개발 훈련시설로써 <span>현장 경험 20년
										이상의 강의 경력을 갖고 있는 기관장과 현장 경험이 </span><span>풍부한 교수진 및 수강생 관리
										직원들이 최고의 훈련을 제공하고자 노력하고 있습니다.</span>
								</p>
								<img src="images/sub_box10_img1.png" alt="" />
								<div class="btn">
									<a href="login.inc">로그인페이지로 이동</a>
								</div>
							</div>
						</div>
					</div>
					<jsp:include page="/jsp/common/right.jsp"></jsp:include>
				</div>
			</div>
		</div>

		<jsp:include page="/jsp/common/footer.jsp"></jsp:include>

	<!--// 접수완료 팝업 -->
	<script type="text/javascript" src="js/jquery.stylish-select.js"></script>
	<script type="text/javascript">
$(document).ready(function(){
	$('select').sSelect({ddMaxHeight: '300px'});
});
</script>

	<!--  우편번호 관련   -->
	<div id="layer"
		style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
		<img
			src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
			id="btnCloseLayer"
			style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
			onclick="closeDaumPostcode()" alt="닫기 버튼" />
	</div>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
        
    }
    
   

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample2_address').value = fullAddr;
            //    document.getElementById('sample2_addressEnglish').value = data.addressEnglish;

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%'
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 300; //우편번호서비스가 들어갈 element의 width
        var height = 460; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 5; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
    
</script>


</body>
</html>