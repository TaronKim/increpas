<%@page import="dao.MemberDAO"%>
<%@page import="vo.EduVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	EduVO[] ar = MemberDAO.getEduList();
	String chk = request.getParameter("chk");
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
<title>인크레파스: 개발자로 성장하는 학교</title>

<link rel="stylesheet" type="text/css" href="../../css/main.css" />
<link rel="stylesheet" type="text/css" href="../../css/common.css" />

<script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../js/main.js"></script>

<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

<script
  src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>

<script src="../../js/slickcustomscroll.js"></script>

<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
        $("#box2, #box3").css("display","none");
        <%
        	if(chk != null && chk.equals("0")){
        		%>
        		$("#box1, #box2").css("display","none");
       			$("#box3").css("display","block");
       			
       			$("#tab1, #tab2").attr("class","");
       			$("#tab3").attr("class","on");
        		<%
        	}else if(chk != null && chk.equals("1")){
        		%>
        		alert("회원가입이 되지 않았습니다. 다시 가입해주세요");
        		$("#box3, #box2").css("display","none");
       			$("#box1").css("display","block");
       			
       			$("#tab3, #tab2").attr("class","");
       			$("#tab1").attr("class","on");
        		<%
        	}
        %>
        
        
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
		    	   buttonImage: '../../images/cal.png', 
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
    	$.ajax({
    		url : "get_course_date.jsp",
    		method : "POST",
    		data: { c_num: encodeURIComponent(c.value) }
    	}).done(function( msg ) {
    	    $("#edu_date").val(msg.trim());
    	  });
    }
    
    function checkID(){
		//아이디가 입력되는 입력란 객체 가져오기
		var s_id = document.getElementById("m_id");
		
		//사용자가 입력한 id값 가져오기
		var str = trim(s_id.value);
		
		//alert(str);
		//사용자가 입력한 id값의 길이가 4자 이상일 때
		if(str.length > 3){
			
			$.ajax({
	    		url : "check_id.jsp",
	    		method : "POST",
	    		data: { id : encodeURIComponent(str) }
	    	}).done(function( msg ) {
	    		if(msg == "1"){
	    			 $("#id_msg").html("사용불가!");
	    			 $("#id_msg").attr("class","fail");
	    		}else{
	    			 $("#id_msg").html("사용가능!");
	    			 $("#id_msg").attr("class","success");
	    		}
	    	   
	    	  });
		}else
			document.getElementById("id_msg").innerHTML = "<strong>*</strong> 4~20자의 범위에서 영문자와 숫자만 가능합니다.";
		$("#id_msg").attr("class","tb_txt1");
    }
	
	function checkPWD(){
		//패스워드가 입력되는 입력란 객체 가져오기
		var s_pwd = document.getElementById("m_pwd");
		
		//사용자가 입력한 pw값 가져오기
		var str = s_pwd.value;
		
		//alert(str);
		//사용자가 입력한 pw값의 길이가 6자 이상일 때
		if(str.length > 5){
			 var blank_pattern = /[\s]/g;
			 if( blank_pattern.test( str)){
				 document.getElementById("pwd_msg").innerHTML = "공백이 들어갔습니다.";
				 document.getElementById("pwd_msg").className = "fail";
				 return false;
			 }


			  if(!str.match(/([a-zA-Z0-9].*[!,@,#,$,%,^,&,*,?,_,~])|([!,@,#,$,%,^,&,*,?,_,~].*[a-zA-Z0-9])/)) {
				    document.getElementById("pwd_msg").innerHTML = "문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
				    document.getElementById("pwd_msg").className = "fail";
				return;  
			  }
			 
			  document.getElementById("pwd_msg").innerHTML = "사용 가능!";
			  document.getElementById("pwd_msg").className = "success";
		}else{
			document.getElementById("pwd_msg").innerHTML = "<strong>*</strong> 문자와 숫자 특수문자 조합6~12자리입력, 특수문자는('@#$%!)만 가능";
		document.getElementById("pwd_msg").className = "tb_txt1";
		}
	}
	
	function check_pw(){
		var p = document.getElementsByName("m_pwd");
		var p1 = document.getElementsByName("m_pwd1");
		var msg = document.getElementById("pwd_msg1");
		var chk = document.getElementById("chk_id");
		
		if(p[0].value != p1[0].value){
			msg.innerHTML = "비밀번호가 다릅니다.";
			msg.className = "fail";
		}else{
			msg.innerHTML = "비밀번호 확인";
		msg.className = "success";
		}
	}
	
	///////////////////////////////////////////////////////////////////////////////
	
	function sendData(){
		
		var f = document.forms[0];
		var chk = document.getElementById("id_msg");
		var chk_pw = document.getElementById("pw_msg");
		var p = document.getElementsByName("m_pwd");
		var p1 = document.getElementsByName("m_pwd1");
		var id = document.getElementById("m_id");
		
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


		<jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
		<jsp:include page="../../jsp/common/left.jsp"></jsp:include>

		<div class="main_con">
			<div class="sub_layout">
				<div class="location">
					<img src="../../images/home.jpg" alt="" /><span>회원가입</span>
				</div>
				<div class="sub_box1">
					<div class="sub_layout2">
						<div class="sub_tit5">
							<h1>회원가입</h1>
							<p>인크레파스에 오신 것을 환영합니다.</p>
						</div>
						<div class="join_tab">
							<a id="tab1" class="on"><strong><img
									src="../../images/join_tab_img1.png" alt="인크레파스 회원가입" /></strong>약관동의</a><a
								id="tab2"><strong><img
									src="../../images/join_tab_img2.png" alt="" /></strong>정보입력</a><a id="tab3"><strong><img
									src="../../images/join_tab_img3.png" alt="" /></strong>회원가입 완료</a>
						</div>
						<div id="box1">
							<div class="join_box3" id="t​erms">
								<div class="join_box3_1">
									<h1>이용약관</h1>
									<div class="join_box3_2">제 1 조 (목적) 본 약관은 주식회사 인크레파스 (이하
										</div>
									<div class="agree mab20" id="p_info">
										<input type="checkbox" id="chk1"><label for="chk1">이용약관에
											동의합니다.</label>
									</div>
									<h1>개인정보취급방침</h1>
									<div class="join_box3_2">회사의 개인정보 수집 목적은 최적화된 맞춤화 서비스를
										</div>
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
							<form action="add_member.jsp" method="post">
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

																<%
																		if(ar!=null){
																			for(EduVO vo : ar){
																	%>
																	<option value="<%=vo.getE_IDX() %>"><%=vo.getE_TITLE() %></option>

																	<%
																	}//end of if
																			}//end of for
																	%>


																</select>
															</div>
														</div>
													</td>
												</tr>
												<tr>
													<th>교육기간</th>
													<td><input type="text" class="w183"
														readonly="readonly" id="edu_date"
														 /></td>
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
								<img src="../../images/sub_box10_img1.png" alt="" />
								<div class="btn">
									<a href="loginView.jsp">로그인페이지로 이동</a>
								</div>
							</div>
						</div>
					</div>
					<jsp:include page="../../jsp/common/right.jsp"></jsp:include>
				</div>
			</div>
		</div>

		<jsp:include page="../../jsp/common/footer.jsp"></jsp:include>

	<!--// 접수완료 팝업 -->
	<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
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