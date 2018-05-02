<%@page import="dao.CommDAO"%>
<%@page import="vo.CommVO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String c_page = request.getParameter("nowPage");

	Object obj = session.getAttribute("mvo");
	MemberVO mvo = null;
	if(obj != null)
	mvo = (MemberVO)session.getAttribute("mvo");
%>

<%
	//요청시 한글처리
	request.setCharacterEncoding("utf-8");

	String c_idx = request.getParameter("c_idx");
	
	CommVO vo = CommDAO.getComm(c_idx);
%>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, target-densitydpi=medium-dpi, user-scalable=no"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta name="description" content="인크레파스, 개발자로 성장하는 학교, 국비지원, 빅데이터교육, 국비지원직업훈련">
<title>인크레파스: 개발자로 성장하는 학교</title>

<link rel="stylesheet" type="text/css" href="../../../css/main.css"/>
<link rel="stylesheet" type="text/css" href="../../../css/common.css"/>

<script src="../../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="../../../js/main.js"></script>


<script type="text/javascript" src="../../../js/jquery.min.js"></script>
<script type="text/javascript" src="../../../js/jquery.mousewheel.min.js"></script>

<script src="../../../js/slickcustomscroll.js"></script>


<script type="text/javascript">    
    $( document ).ready( function() {
        $( "div[rel='scrollcontent1']" ).customscroll( { direction: "vertical" } );
    });  
    
    function list(p){
		document.ff.nowPage.value = p;
		document.ff.action = "we_story.inc";
		document.ff.submit();
	}

</script>
<script
src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="js/summernote/lang/summernote-ko-KR.js"></script>

<script type="text/javascript">
	function sendData(){

 		if(document.forms[0].title.value == ""){
 			alert("제목을 입력하세요");
			document.forms[0].title.focus();
			return;
 		}

 		

		document.forms[0].submit();
	}
</script>

<style type="text/css">
	.sub_write{padding:30px 0;}
	.table_style{border-collapse:collapse;}
	.table_style th,
	.table_style td{padding:5px 10px;border:1px solid #ccc;}
	.table_style th{padding:5px 10px;background:#009add;color:#fff;}
	
	.table_style td input[type="text"]{width:100%;border:1px solid #ccc;border-radius:5px;}
	.table_style td input[type="password"]{width:100px;border:1px solid #ccc;border-radius:5px;}
	.table_style td input.writer,
	.table_style td input.process{padding:0px 5px;background:#ccc;}
	.table_style .btn_style{display: inline-block;vertical-align: top;padding:0 10px;height: 34px;text-align: center;
	line-height: 34px;background: #009add;border-radius: 3px;font-size: 14px;color: #fff;}
</style>
</head>
<body>
<jsp:include page="../../../jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="../../../jsp/common/left.jsp" ></jsp:include>

<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="../../../images/home.jpg" alt="인크레파스 우리들의 이야기" /></a><span>커뮤니티</span><span>우리들의이야기</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<!-- 글쓰기 -->
					<div class="sub_write">
						<form action="edit_ok.jsp" name="frm1" method="post" encType="multipart/form-data">
							<table class="table_style" summary="게시판 글쓰기">
								<caption>게시판 글쓰기</caption>
								<colgroup>
									<col style="width:100px"/>
									<col />
								</colgroup>
								<tbody>
									<tr>
										<th>제목:</th>
										<td><input type="text" id="title" name="title" size="45" value="<%=vo.getC_title()%>"/></td>
									</tr>
									<tr>
										<th>작성자:</th>
										<td><input type="text" id="writer" class="writer" name="writer" readonly="readonly" value="<%=mvo.getM_ID() %>" style="width:100px;" /></td>
									</tr>
									<tr>
										<th>내용:</th>
										<td><textarea id="content" name="content" cols="50" rows="8"><%=vo.getC_content() %></textarea></td>
									</tr>
									<tr>
										<th>썸네일 이미지:</th>
										<td><input type="file" id="file" name="s_file"/>
										<%if(vo.getC_img() != null && 
											vo.getC_img().length() > 4){ %>
											(<%=vo.getC_img() %>)
										<% }//if문의 끝 %>
										</td>
									</tr>
									
									<tr>
										<td colspan="2">
											<input type="button" class="btn_style" value="저장" onclick="sendData()"/>
											<input type="button" class="btn_style" value="목록"
						onclick="javascript:location.href='we_story.jsp?cPage=<%=c_page %>'"/>	
										</td>
									</tr>
								</tbody>
							</table>
							<input type="hidden" name="cPage" value="<%=c_page %>"/>
							<input type="hidden" name="c_idx" value="<%=c_idx %>"/>
						</form>
					</div>
					<form action="we_story.jsp" method="post" name="frm">
						<input type="hidden" name="cPage" value="<%=c_page %>"/>
					</form>
				</div>
				
				<jsp:include page="../../../jsp/common/right.jsp" ></jsp:include>
   
			</div>
		</div>
	</div>

<jsp:include page="../../../jsp/common/footer.jsp" ></jsp:include>

	
	
	<form action="we_story.jsp" method="post" name="frm">
		<input type="hidden" name="cPage" value="<%=c_page %>"/>
	</form>
	
	<script type="text/javascript">
		
	$(function(){
		
		$('#content').summernote({
	        //placeholder: 'Hello stand alone ui',
	        tabsize: 2,
	        height: 300,
//	        width: 550,
	        maxHeight: 400,
			minHeight: 200,
			focus: true,
			lang: 'ko-KR',
			callbacks:{
				onImageUpload : function(files, editor, welEdit){

					sendFile(files[0], editor, welEdit);
				}
			}
	    });
		$('#content').summernote('lineHeight', 0.5);
	});

	function sendFile(file, editor, welEdit){
		//파라미터를 전달하기 위해 form객체 만든다.
		var frm = new FormData();
		
		//위의 frm객체에 send_img이라는 파라미터를 지정!
		frm.append("send_img", file);
		
		//비동기식 통신
		$.ajax({
			url: "saveImage.jsp",
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
	
		function goList(){
			document.frm.submit();
		}
	</script>
</body>
</html>