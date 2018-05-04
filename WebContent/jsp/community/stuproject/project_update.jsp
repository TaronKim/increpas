<%@page import="vo.ProjectVO"%>
<%@page import="vo.EduVO"%>
<%@page import="dao.ProjectDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String c_idx = request.getParameter("c_idx");
	String cPage = request.getParameter("cPage");
	String e_idx = request.getParameter("e_idx");
	
	//System.out.print(c_idx);
	//System.out.print(cPage);
	
	MemberVO mvo = null;
	Object obj = session.getAttribute("mvo");
	if(obj != null){
		mvo = (MemberVO)obj;
	}
	
	ProjectVO pvo = ProjectDAO.projectView(c_idx);
	
	
	EduVO[] ar = ProjectDAO.getEdu();

	
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>인크레파스: 개발자로 성장하는 학교</title>
<link rel="stylesheet" type="text/css" href="../../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../../css/common.css"/>
<script src="../../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../../js/main.js"></script>

<!-- summernote -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="<%=request.getContextPath() %>/js/summernote/lang/summernote-ko-KR.js"></script>
<!-- //summernote -->

<script type="text/javascript" src="../../../js/jquery.mousewheel.min.js"></script>

<script src="../../../js/slickcustomscroll.js"></script>


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
				
					<!-- 글쓰기 -->
					<div class="sub_write">
						<form action="update_ok.jsp" name="frm1" method="post" encType="multipart/form-data">
							<input type="hidden" name="c_idx" value="<%=c_idx %>" />
							<input type="hidden" name="fname" value="<%=pvo.getC_img() %>" />
							<table class="table_style" summary="게시판 글쓰기">
								<caption>게시판 글쓰기</caption>
								<colgroup>
									<col style="width:100px"/>
									<col />
								</colgroup>
								<tbody>
									<tr>
										<th>제목:</th>
										<td><input type="text" id="title" name="title" value="<%=pvo.getC_title()%>"/></td>
									</tr>
									<tr>
										<th>작성자:</th>
										<td><input type="text" id="writer" class="writer" name="writer" readonly="readonly" value="<%=mvo.getM_id() %>" style="width:100px;" /></td>
									</tr>
									<tr>
										<th>과정명:</th>
										<td>
											<select id="select2" name="eidx" style="width:500px;">
												<option>::과정명 선택::</option>
												<%
													if(ar != null){
														for(EduVO vo : ar){
															if(vo.getE_IDX().equals(e_idx)){
												%>
															<option selected value="<%=vo.getE_IDX()%>"><%=vo.getE_TITLE() %></option>
												<%
															}else{
												%>				
															<option value="<%=vo.getE_IDX()%>"><%=vo.getE_TITLE() %></option>
												<%				
															}
														}
													}
												%>
												<!-- <option value="1">자바머신러닝기반 응용SW엔지니어 양성과정</option>
												<option value="2">자바 개발 교육 & 아두이노를 활용한 사물인터넷 (IoT) 엔지니어 양성 과정</option> -->
											</select>
										</td>
									</tr>
									<tr>
										<th>내용:</th>
										<td><textarea id="content" name="content" cols="50" rows="8"><%=pvo.getC_content() %></textarea></td>
									</tr>
									<tr>
										<th>첨부파일:</th>
										<td>
											<input type="file" id="file" name="file" />
											<%
												if(pvo.getC_img() != null){
											%>
													현재 업로드파일:<%=pvo.getC_img() %>
											<%
												}else{
											%>		
													선택된 파일이 없습니다.
											<%		
												}
											%>
											
											
										</td>
									</tr>
									<!-- <tr>
										<th>비밀번호:</th>
										<td><input type="password" name="pwd" size="12"/></td>
									</tr> -->
									<tr>
										<td colspan="2">
											<input type="button" class="btn_style" value="저장" onclick="sendData()"/>
											<input type="button" class="btn_style" value="목록"
						onclick="javascript:location.href='we_project.jsp?cPage=<%=cPage %>'"/>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
					<!-- //글쓰기 -->
				</div>
				<jsp:include page="/jsp/common/right.jsp"></jsp:include>
			</div>
		</div>
	</div>
	
	<form action="we_project.jsp" method="post" name="frm">
		<input type="hidden" name="cPage" value="<%=cPage %>"/>
	</form>
	
	<jsp:include page="/jsp/common/footer.jsp"></jsp:include>
	
	<script type="text/javascript">
	
		function sendData(){
			var title = $("#title");
			var content = $("#content");
			var file = $("#file");
			
			if(title.val().trim().length <= 0){
				alert("제목을 입력해주세요.");
				$("#title").val("");
				$("#title").focus();
				return;
			}
			
			if(content.val().trim().length <= 0){
				alert("내용을 입력해주세요.");
				$("#content").val("");
				$("#content").focus();
				return;
			}
			
			document.frm1.submit();
	 		
		}
	</script>
	
	<script type="text/javascript">
	
	$(function(){
		
		$('#content').summernote({
	        //placeholder: 'Hello stand alone ui',
	        tabsize: 2,
	        height: 500,
//	        width: 550,
	        maxHeight: 600,
			minHeight: 200,
			focus: true,
			lang: 'ko-KR',
			callbacks:{
				onImageUpload : function(files, editor, welEdit){
					//alert("^^");
					//console.log('img upload: ', files);
					//이미지를 첨부하면 배열로 인식된다.
					//이것을 서버로 비동기식 통신을 하는 
					//함수를 호출하면서 보낸다.
					sendFile(files[0], editor, welEdit);
				}
			}
	    });
		$('#content').summernote('lineHeight', 1.2);
	});

	function sendFile(file, editor, welEdit){
		//파라미터를 전달하기 위해 form객체 만든다.
		var frm = new FormData();
		
		//위의 frm객체에 send_img이라는 파라미터를 지정!
		frm.append("send_img", file);
		
		//비동기식 통신
		$.ajax({
			url: "<%=request.getContextPath()%>/jsp/community/stuproject/saveImage.jsp",
			data: frm,
			cache: false,
			contentType: false,
			processData: false,
			type: "POST",
			dataType: "JSON" //나중 받을 데이터의 형식을 지정
		}).done(function(data){
			//도착함수
			//alert(data.url);
			
			//에디터에 img태그로 저장하기 위해 
			//다음과 같이 img태그를 정의한다.
			//var image = $('<img>').attr('src',data.url);
			
			//에디터에 정의한 img태그를 보여준다.
			//$('#content').summernote('insertNode',image[0]);
			
			$('#content').summernote(
					'editor.insertImage',data.url);
			
		}).fail(function(e){
			console.log(e);
		});
	}
	</script>
</body>
</html>