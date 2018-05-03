<%@page import="vo.EduVO"%>
<%@page import="java.util.Set"%>

<%@page import="dao.eduDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%   
	request.setCharacterEncoding("utf-8");
	String E_IDX = request.getParameter("E_IDX");
	EduVO evo = eduDAO.select(E_IDX);
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
%>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련">
<title>인크레파스: 국비무료 취업과정</title>
<link rel="stylesheet" type="text/css" href="../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../css/common.css"/>
<link rel="stylesheet" type="text/css" href="../../css/edu.css"/>
<script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../js/main.js"></script>
<!--[if lt IE 9]>
<script src="js/html5shiv.min.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->
<script type="text/javascript" src="../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>
<script src="../../js/slickcustomscroll.js"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="js/summernote/lang/summernote-ko-KR.js"></script>


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
	<jsp:include page="../../jsp/common/menu.jsp" flush="true"></jsp:include>
	<jsp:include page="../../jsp/common/left.jsp" ></jsp:include>
	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="<%=request.getContextPath() %>/images/home.jpg" alt="인크레파스 고객센터" /></a><span>고객센터</span><span>상담예약</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						상담예약
						<p>인크레파스 교육센터를 통해 기초부터 탄탄하게 개발력을 키우실 분, 취업에 필요한 프로젝트를 함께 하고 싶으신 분, IT 기업에 개발자로 취업하고자 하는 분께서는 언제든 상담예약이나 전화 02-869-1080으로 상담 요청해 주세요. 감사합니다.</p>
					</div>
					<div class="sub_box6">
						<h1>개인정보수집동의 <span>개인정보보호를 위한 이용자 동의사항</span></h1>
<!-- 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지-->
						<div class="txt">개인정보의 수집범위

인크레파스교육센터는 별도의 회원가입 절차 없이 대부분의 컨텐츠에 자유롭게 접근할 수 있습니다. 인크레파스교육센터의 회원제 서비스를 이용하시고자 할 경우 다음의 정보를 입력해주셔야 하며 선택항목을 입력하시지 않았다 하여 서비스 이용에 제한은 없습니다.

1) 회원 가입시 수집하는 개인정보의 범위
- 필수항목 : 희망 ID, 비밀번호, 비밀번호 힌트용 질문과 답변, 성명, 생년월일, 연락처, 이메일주소

개인정보의 수집목적 및 이용목적
① 인크레파스교육센터는 회원님께 최대한으로 최적화되고 맞춤화된 서비스를 제공하기 위하여 다음과 같은 목적으로 개인정보를 수집하고 있습니다.
- 성명, 아이디, 비밀번호, 생년월일 : 회원제 서비스 이용에 따른 본인 식별 절차에 이용
- 이메일주소, 이메일 수신여부, 전화번호 : 고지사항 전달, 본인 의사 확인, 불만 처리 등 원활한 의사소통 경로의 확보, 새로운 서비스/신상품이나 이벤트 정보의 안내
- 주소, 전화번호 : 경품과 쇼핑 물품 배송에 대한 정확한 배송지의 확보
- 비밀번호 힌트용 질문과 답변 : 비밀번호를 잊은 경우의 신속한 처리를 위한 내용
- 그 외 선택항목 : 개인맞춤 서비스를 제공하기 위한 자료
② 단, 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않습니다.

개인정보의 보유기간 및 이용기간
① 귀하의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기됩니다. 단, 
상법 등 관련법령의 규정에 의하여 다음과 같이 거래 관련 권리 의무 관계의 확인 등을 이유로 일정기간 보유하여야 할 필요가 있을 경우에는 일정기간 보유합니다.
- 회원가입정보의 경우, 회원가입을 탈퇴하거나 회원에서 제명된 경우 등 일정한 사전에 보유목적, 기간 및 보유하는 개인정보 항목을 명시하여 동의를 구합니다.
- 계약 또는 청약철회 등에 관한 기록 : 5년
- 대금결제 및 재화등의 공급에 관한 기록 : 5년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년
② 귀하의 동의를 받아 보유하고 있는 거래정보 등을 귀하께서 열람을 요구하는 경우 인크레파스교육센터는 지체없이 그 열람,확인 할 수 있도록 조치합니다.</div>
						<div class="agree"><input type="checkbox" id="chk1" /><label for="chk1">본인은 위 이용약관 및 개인정보취급방침에 동의합니다.</label></div>
					</div>
<!-- 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지 개인정보약관, 수정금지-->
					<div class="sub_box7">
						<h1>상담신청</h1>
						<form action="gov_yeyak_ok.jsp" method="post">
						<table class="table3">
							<colgroup>
								<col width="140" class="tb_w100" />
								<col width="*" />
							</colgroup>
							<tbody>
								<tr>
									<th>상담 종류</th>
									<td>
										<input type="radio" id="radio1" name="Y_CON" checked="checked" value="1"/><label for="radio1">방문</label><input type="radio" id="radio2" name="Y_CON" value="2"/><label for="radio2">전화</label>
									</td>
								</tr>
								<tr id="date_row">
									<th>희망 날짜</th>
									<td>
										<input type="text" id="c_date1" name="Y_DATE" /><span class="tb_txt1 marR28"> 예: 90/12/01</span>
									</td>
								</tr>
								<tr>
									<th>신청자 명</th>
									<td><input type="text" class="w183" id="Y_NAME" name="Y_NAME"/></td>
								</tr>
								<tr>
									<th>연락처</th>
									<td>
										<input type="text" class="w75" name="Y_PHONE1"/><span class="tb_txt2">-</span><input type="text" class="w75" name="Y_PHONE2" /><span class="tb_txt2">-</span><input type="text" class="w75" name="Y_PHONE3" />
									</td>
								</tr>
								<tr>
									<th>관심 교육</th>
									<td>
										<div class="select_type1 w160">
											<div class="select_type1_1">
												<%
												if(evo.getE_CATEGORY().equals("1")){
												%>
												<input type="text" name="Y_CATEGORY" value="국비 지원 교육" readonly/>
												<%
												}else if(evo.getE_CATEGORY().equals("2")){
												%>
												<input type="text" name="Y_CATEGORY" value="실업자(계좌제)교육" readonly/>											
												<%
												}
												%>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<th>관심 과정</th>
									<td>
										<div class="select_type1 w440">
											<div class="select_type1_1" id="cBox1">
												<input type="text" name="Y_TITLE" value="<%=evo.getE_TITLE()%>" readonly/>
											</div>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<div class="btn">
						<button>등록하기</button>
			<%-- 				<a href="<%=request.getContextPath()%>/jsp/edu/gov_yeyak_ok.jsp">등록하기</a><a href="gov_free.jsp">취소</a>  --%>
						</div>
						</form>
					</div>
				</div>
	</div>
	</div>
	</div>
	<jsp:include page="../../jsp/common/footer.jsp"></jsp:include>
<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">
$(function(){
	function goList(){
		document.frm.submit();
	}
	
	function sendData(){
		
		document.forms[0].submit();
	}
})
</script>
</body>
</html>