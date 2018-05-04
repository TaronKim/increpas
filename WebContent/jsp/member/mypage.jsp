<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if (obj != null) {
		mvo = (MemberVO) obj;
	}
	if (mvo != null) {
		System.out.println(mvo.getChk());
%>
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
<title>인크레파스: 마이페이지</title>
<style type="text/css">
.success {
	color: blue;
	font-weight: bold;
	font-size: 13px;
}

.fail {
	font-size: 13px;
	color: red;
	font-weight: bold;
}
</style>
<link rel="stylesheet" type="text/css" href="../../css/main.css" />
<link rel="stylesheet" type="text/css" href="../../css/common.css" />
<style type="text/css">
#question {
	text-align: left;
	padding-left: 14px;
	padding-right: 10px;
}
</style>
<script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="/js/html5shiv.min.js"></script>
<script src="/js/respond.min.js"></script>
<![endif]-->

<script type="text/javascript" src="SE2/js/HuskyEZCreator.js"
	charset="utf-8"></script>

<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>

<script src="../../js/slickcustomscroll.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />

<script type="text/javascript">
	
		var oEditors = [];
	
		$(document).ready(function() {
	
			$("div[rel='scrollcontent1']").customscroll({
				direction : "vertical"
			});
			$("div[rel='scrollcontent3']").customscroll({
				direction : "vertical",
				bounce : 0
			});
	
			$("#tab1, #tab2, #tab3, #tab4").css("cursor", "pointer");
			
			<%if (mvo.getChk() != null) {
				%>
				$("#c_box2").css("display", "none");
				$("#c_box3").css("display", "block");
				$("#c_box4").css("display", "none");
				$("#c_box1").css("display", "none");
	
				$("#tab2, #tab1, #tab4").attr("class", "");
				$("#tab3").attr("class", "on");
				<%
					if (mvo.getChk().equals("1")) {%>
					$("#pop4").fadeIn();
			<%}
				}%>
			$("#tab1").bind("click", function() {
	
				$("#c_box2").css("display", "none");
				$("#c_box3").css("display", "none");
				$("#c_box4").css("display", "none");
				$("#c_box1").css("display", "block");
	
				$("#tab2, #tab3, #tab4").attr("class", "");
				$(this).attr("class", "on");
			});
	
			$("#tab2").bind("click", function() {
	
				$("#c_box1").css("display", "none");
				$("#c_box3").css("display", "none");
				$("#c_box4").css("display", "none");
				$("#c_box2").css("display", "block");
	
				$("#tab1, #tab3, #tab4").attr("class", "");
				$(this).attr("class", "on");
			});
	
			$("#tab3").bind("click", function() {
	
				$("#c_box1").css("display", "none");
				$("#c_box2").css("display", "none");
				$("#c_box4").css("display", "none");
				$("#c_box3").css("display", "block");
	
				$("#tab1, #tab2, #tab4").attr("class", "");
				$(this).attr("class", "on");
			});
	
			$("#tab4").bind("click", function() {
	
				$("#c_box1").css("display", "none");
				$("#c_box2").css("display", "none");
				$("#c_box3").css("display", "none");
				$("#c_box4").css("display", "block");
	
				$("#tab1, #tab2, #tab3").attr("class", "");
				$(this).attr("class", "on");
			});
	
			// 달력 관련 부분 ------------------------------
			$.datepicker.regional['ko'] = {
				closeText : '닫기',
				prevText : '이전달',
				nextText : '다음달',
				currentText : '오늘',
				monthNames : [ '1월(JAN)', '2월(FEB)', '3월(MAR)', '4월(APR)', '5월(MAY)', '6월(JUN)',
					'7월(JUL)', '8월(AUG)', '9월(SEP)', '10월(OCT)', '11월(NOV)', '12월(DEC)' ],
				monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
					'7월', '8월', '9월', '10월', '11월', '12월' ],
				dayNames : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesShort : [ '일', '월', '화', '수', '목', '금', '토' ],
				dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
				weekHeader : 'Wk',
				dateFormat : 'yy-mm-dd',
				firstDay : 0,
				isRTL : false,
				showMonthAfterYear : true,
				yearSuffix : ''
			};
	
			$.datepicker.setDefaults($.datepicker.regional['ko']);
	
	
			$("#datepicker").datepicker({
				showOn : 'button',
				buttonImage : '../../images/cal.png',
				buttonImageOnly : true,
				changeMonth : true,
				buttonText : "달력",
				changeYear : true,
				showButtonPanel : true,
			}).datepicker("setDate", "<%=mvo.getM_birth()%>");
	
	
		});
	
		function del(idx) {
			if (confirm("삭제하시겠습니까?")) {
				document.ff.idx.value = idx;
				document.ff.submit();
			}
		}
	
		function checkPWD() {
			//패스워드가 입력되는 입력란 객체 가져오기
			var s_pwd = document.getElementById("re_pwd");
	
			//사용자가 입력한 pw값 가져오기
			var str = s_pwd.value;
	
			//alert(str);
			//사용자가 입력한 pw값의 길이가 6자 이상일 때
			if (str.length > 5) {
				var blank_pattern = /[\s]/g;
				if (blank_pattern.test(str)) {
					document.getElementById("pwd_msg").innerHTML = "공백이 들어갔습니다.";
					document.getElementById("pwd_msg").className = "fail";
					return false;
				}
	
	
				if (!str.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
					document.getElementById("pwd_msg").innerHTML = "문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
					document.getElementById("pwd_msg").className = "fail";
					return;
				}
	
				document.getElementById("pwd_msg").innerHTML = "사용 가능!";
				document.getElementById("pwd_msg").className = "success";
			} else {
				document.getElementById("pwd_msg").innerHTML = "<strong>*</strong> 문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
				document.getElementById("pwd_msg").className = "tb_txt1";
			}
		}
	
		function check_pw() {
			
			var p = document.getElementById("re_pwd");
			var p1 = document.getElementById("re_pwd2");
			var msg = document.getElementById("pwd_msg1");
			
			if (p1.value.length > 5) {
				if (p.value != p1.value) {
					msg.innerHTML = "비밀번호가 다릅니다.";
					msg.className = "fail";
				} else {
					msg.innerHTML = "비밀번호 확인";
					msg.className = "success";
				}
			}else {
				msg.innerHTML = "비밀번호 확인을 위해 한번 더 입력해 주세요";
				msg.className = "tb_txt1";
			}
		}
	
		function reqPwd() {
			var pwd = document.getElementById("pwd");
			var re_pwd = document.getElementById("re_pwd");
			var re_pwd2 = document.getElementById("re_pwd2");
	
			if(pwd.value == re_pwd.value){
				$("#pop3").fadeIn();
				
				pwd.value = "";
				re_pwd.value = "";
				re_pwd2.value = "";
				
				document.getElementById("pwd_msg").innerHTML = "<strong>*</strong> 문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
				document.getElementById("pwd_msg").className = "tb_txt1";
				
				var msg = document.getElementById("pwd_msg1");
				
				msg.innerHTML = "비밀번호 확인을 위해 한번 더 입력해 주세요";
				msg.className = "tb_txt1";
				return;
			}else{
			
			$.ajax({
	    		url : "change_pwd.jsp",
	    		method : "POST",
	    		data: { pwd: encodeURIComponent(pwd.value),
	    			re_pwd: encodeURIComponent(re_pwd.value)	}
	    	}).done(function( msg ) {
	    		var res = trim(msg);
	    		
				if (res == "success"){
					pwd.value = "";
					re_pwd.value = "";
					re_pwd2.value = "";
					
					document.getElementById("pwd_msg").innerHTML = "<strong>*</strong> 문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
					document.getElementById("pwd_msg").className = "tb_txt1";
					
					var msg = document.getElementById("pwd_msg1");
					
					msg.innerHTML = "비밀번호 확인을 위해 한번 더 입력해 주세요";
					msg.className = "tb_txt1";
					
					$("#pop1").fadeIn();
					
				}else if (res == "fail"){
					pwd.value = "";
					re_pwd.value = "";
					re_pwd2.value = "";
				
					
					document.getElementById("pwd_msg").innerHTML = "<strong>*</strong> 문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
					document.getElementById("pwd_msg").className = "tb_txt1";
					
					var msg = document.getElementById("pwd_msg1");
					
					msg.innerHTML = "비밀번호 확인을 위해 한번 더 입력해 주세요";
					msg.className = "tb_txt1";
					
					$("#pop2").fadeIn();
				
				}
	    	  });
			}
		}
		function trim(str) { //공백제거 함수
			var s = str.replace(/^\s+|\s+$/g, "");
	
			return s;
		}
	
		function res() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var res = trim(xhr.responseText);
	
				if (res == "success")
					$("#pop1").fadeIn();
				else if (res == "fail")
					$("#pop2").fadeIn();
			}
		}
		//--------- 정보 변경 --------------------------
		function sendData() {
			var birthday = trim(document.person_form.m_birth.value);
			var email = trim(document.person_form.m_email.value);
			var cellphone = trim(document.person_form.m_phone.value);
			var addr = trim(document.person_form.m_addr.value);
	
			if (birthday.length == 0) {
				alert("생일을 입력하세요.");
				document.person_form.birthday.focus();
				return;
			}
	
			if (email.length == 0) {
				alert("이메일을 입력하세요.");
				document.person_form.email.focus();
				return;
			}
	
			if (cellphone.length == 0) {
				alert("전화번호를 입력하세요.");
				document.person_form.cellphone.focus();
				return;
			}
	
			if (addr.length == 0) {
				alert("주소를 입력하세요.");
				document.person_form.addr.focus();
				return;
			}
	
			document.person_form.submit();
		}
	
		function join(idx) {
			document.ff.action = "mypage.inc";
			document.ff.idx.value = idx;
	
			document.ff.submit();
		}
	
		function init() {
			if (trim(document.ff.idx.value) != "") {
				$("#pop4").fadeIn();
	
				$("#c_box1").css("display", "none");
				$("#c_box2").css("display", "none");
				$("#c_box3").css("display", "none");
				$("#c_box4").css("display", "block");
	
				$("#tab1, #tab2, #tab3").attr("class", "");
				$("#tab4").attr("class", "on");
			}
	
			var height3 = $(".left_problem").height() - 20;
			$(".scrollcontent3-bar").css({
				"height" : height3
			});
	
	
		}
	</script>
</head>

<body onload="init()">
	<jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="../../jsp/common/left.jsp"></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="../../images/home.jpg" alt="" /></a><span>마이페이지</span>
			</div>

			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit5">
						<h1>마이페이지</h1>
						<p>인크레파스 회원님만의 공간입니다.</p>
					</div>

					<div class="join_tab">
						<a class="on" id="tab1">신청교육과정</a><a id="tab2">비밀번호변경</a><a
							id="tab3">개인정보변경</a>
					</div>
					<div id="c_box1">
						<div class="sub_box7">
							<h1 class="pat39">신청교육과정</h1>
							<table class="table4">
								<colgroup>
									<col width="82" class="mo" />
									<col width="*" />
									<col width="22%" />
									<col width="10%" />
									<col width="11%" />
								</colgroup>

								<thead>
									<tr>
										<th class="mo">번 호</th>
										<th>과정명</th>
										<th>교육기간</th>
										<th>상태</th>
										<th>삭제여부</th>
									</tr>
								</thead>

								<tbody>

									<tr>
										<td colspan="4" class="empty">현재 등록된 과정이 없습니다.</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
					<div id="c_box2" class="none">
						<form name="pw_form" method="post">
							<div class="sub_box7">

								<h1 class="pat39">비밀번호변경</h1>
								<ul class="mo_pw">

									<li><span><strong>현재 비밀번호</strong></span> <input
										type="password" class="w220" id="pwd" /> <b>현재 비밀번호를
											입력하세요</b></li>

									<li><span><strong>새 비밀번호</strong></span> <input
										type="password" class="w220" id="re_pwd" onkeyup="checkPWD()" />
										<h5 class="tb_txt1" id="pwd_msg">
											<strong>*</strong> 문자와 숫자,특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능
										</h5></li>

									<li><span><strong>새 비밀번호 확인</strong></span> <input
										type="password" class="w220" id="re_pwd2" onkeyup="check_pw()" />
										<h5 class="tb_txt1" id="pwd_msg1">비밀번호 확인을 위해 한번 더 입력해
											주세요</h5></li>

								</ul>

							</div>

							<div class="join_box4">
								<a href="javascript:reqPwd()">비밀번호 변경</a><a href="#">취소</a>
							</div>
						</form>
					</div>
					<div id="c_box3" class="none">
						<form name="person_form" method="post" action="modify_info.jsp">
							<div class="sub_box7">

								<h1 class="pat39">기본 정보 입력</h1>

								<table class="table3">

									<colgroup>
										<col width="140" class="tb_w100" />
										<col width="*" />
									</colgroup>

									<tbody>

										<tr>
											<th>아이디</th>
											<td class="mo_id"><%=mvo.getM_id()%>
											<input type="hidden" name="m_id" value="<%=mvo.getM_id()%>" /></td>
										</tr>

										<tr>
											<th>이 름</th>
											<td><%=mvo.getM_name()%>
											<input type="hidden" name="m_name" value="<%=mvo.getM_name()%>" />
											</td>
										</tr>

										<tr>
											<th>생년월일</th>
											<td><input type="text" class="w139" id="datepicker"
												name="m_birth" value="<%=mvo.getM_birth()%>"/><span class="tb_txt1 marR28"> 예:
													1990-12-01</span> <input type="radio" id="radio3" name="m_sex"
												value="1"
												<%if(mvo.getM_sex().equals("1")){
					out.println("checked");}%> /><label
												for="radio3"
												class='<%if (mvo.getM_sex().equals("1"))
					out.println("on");%>'>남자</label><input
												type="radio" id="radio4" name="m_sex" value="2"
												<%if (mvo.getM_sex().equals("2"))
					out.println("checked");%> /><label
												for="radio4"
												class='<%if (mvo.getM_sex().equals("2"))
					out.println("on");%>'>여자</label>
											</td>

										</tr>

										<tr>
											<th>이메일</th>
											<td><input type="text" class="w183" name="m_email"
												id="e_mail" value="<%=mvo.getM_email()%>" /></td>

										</tr>

										<tr>

											<th>전화번호</th>
											<td><input type="text" class="w183" name="m_phone"
												id="cellphone" value="<%=mvo.getM_phone()%>" /></td>
										</tr>

									</tbody>

								</table>

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
														name="m_zip" value="<%=mvo.getM_zip()%>" /> <a
														href="javascript:sample2_execDaumPostcode()"
														class="btn_zip">우편번호 찾기</a>
												</div>
												<div class="pat7">
													<input type="text" class="w578" id="sample2_address"
														name="m_addr" value="<%=mvo.getM_addr()%>" />
												</div>
											</td>

										</tr>

										<tr>
											<th>최종학교</th>
											<td><input type="text" class="w183 marR28"
												name="m_school" value="<%=mvo.getM_school()%>" /> <span
												class="tb_txt4_1"> <span class="tb_txt4_2"> <span
														class="tb_txt4"> 전공 </span> <input type="text"
														class="w139 marR28" name="m_major"
														value="<%=mvo.getM_major()%>" />
												</span>
											</span> <span class="tb_txt4"> 졸업여부 </span>
												<div class="select_type1 w135">
													<div class="select_type1_1">
														<select name="m_grad">
															<option value="졸업"
																<%if (mvo.getM_grad().equals("졸업"))
					out.println("selected");%>>졸업</option>
															<option value="졸업예정"
																<%if (mvo.getM_grad().equals("졸업예정"))
					out.println("selected");%>>졸업예정</option>
															<option value="재학"
																<%if (mvo.getM_grad().equals("재학"))
					out.println("selected");%>>재학</option>
														</select>
													</div>
												</div></td>
										</tr>
									</tbody>
								</table>
							</div>
							<input type="hidden" name="m_process" value="<%=mvo.getM_process()%>" />
							<input type="hidden" name="m_edate" value="<%=mvo.getM_edate()%>" />
							<input type="hidden" name="m_type" value="<%=mvo.getM_type()%>" />
							<input type="hidden" name="m_status" value="<%=mvo.getM_status()%>" />
							<div class="join_box4">
								<a href="javascript:sendData()">정보수정 완료</a><a href="#">취소</a>
							</div>
						</form>
					</div>

				</div>
				<!-- Quick -->
				<jsp:include page="../../jsp/common/right.jsp"></jsp:include>
				<!--// Quick -->
			</div>
		</div>
	</div>

	<!-- 접수완료 팝업 -->
	<div class="pop_ok" id="pop1">
		<div class="con">
			<a href="#none" class="pop_close"><img
				src="../../images/pop_close.png" alt="인크레파스 팝업" /></a>
			<h1>변경완료</h1>
			<p>비밀번호가 변경되었습니다.</p>
			<div class="pop_img1">
				<img src="../../images/pop_img1.png" alt="인크레파스 팝업" />
			</div>
		</div>
	</div>
	<!--// 접수완료 팝업 -->
	<!-- 접수실패 팝업 -->
	<div class="pop_ok" id="pop2">
		<div class="con">
			<a href="#none" class="pop_close"><img
				src="../../images/pop_close.png" alt="인크레파스 팝업" /></a>
			<h1>변경실패</h1>
			<p>비밀번호 변경에 실패했습니다.</p>
			<div class="pop_img1">
				<img src="../../images/pop_img1.png" alt="인크레파스 팝업" />
			</div>
		</div>
	</div>

	<div class="pop_ok" id="pop3">
		<div class="con">
			<a href="#none" class="pop_close"><img
				src="../../images/pop_close.png" alt="인크레파스 팝업" /></a>
			<h1>잠깐!</h1>
			<p>
				현재비밀번호와 변경 할 비밀번호가 같습니다.<br /> 변경 할 비밀번호를 다른 비밀번호로 바꿔주세요
			</p>
		</div>
	</div>
<!-- 수정실패 팝업 -->
	<div class="pop_ok" id="pop4">
		<div class="con">
			<a href="#none" class="pop_close"><img
				src="../../images/pop_close.png" alt="인크레파스 팝업" /></a>
			<h1>수정실패</h1>
			<p>회원정보 변경에 실패했습니다.</p>
			<div class="pop_img1">
				<img src="../../images/pop_img1.png" alt="인크레파스 팝업" />
			</div>
		</div>
	</div>
	<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
	<script type="text/javascript">
	
		$(document).ready(function() {
	
			$('select').sSelect({
				ddMaxHeight : '300px'
			});
	
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
				oncomplete : function(data) {
					// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
					// 각 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullAddr = data.address; // 최종 주소 변수
					var extraAddr = ''; // 조합형 주소 변수
	
					// 기본 주소가 도로명 타입일때 조합한다.
					if (data.addressType === 'R') {
						//법정동명이 있을 경우 추가한다.
						if (data.bname !== '') {
							extraAddr += data.bname;
						}
						// 건물명이 있을 경우 추가한다.
						if (data.buildingName !== '') {
							extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
						}
						// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
						fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ')' : '');
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
		function initLayerPosition() {
			var width = 300; //우편번호서비스가 들어갈 element의 width
			var height = 460; //우편번호서비스가 들어갈 element의 height
			var borderWidth = 5; //샘플에서 사용하는 border의 두께
	
			// 위에서 선언한 값들을 실제 element에 넣는다.
			element_layer.style.width = width + 'px';
			element_layer.style.height = height + 'px';
			element_layer.style.border = borderWidth + 'px solid';
			// 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
			element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth) + 'px';
			element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth) + 'px';
		}
	</script>
	<!-- 과정삭제 -->
	<form name="ff" action="del_reg_course.inc" method="post">
		<input type="hidden" name="idx" value="" /> <input type="hidden"
			name="e_idx" /> <input type="hidden" name="c_num" />
	</form>


	<jsp:include page="../../jsp/common/footer.jsp"></jsp:include>
</body>

</html>
<%
	}
%>