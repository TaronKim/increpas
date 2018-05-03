<%@page import="java.util.Set"%>
<%@page import="vo.EduVO"%>
<%@page import="dao.eduDAO"%>
<%@page import="vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%    
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
		<div id="bbs">
	<form action="gov_write_ok.jsp" method="post" 
	encType="multipart/form-data">
		<table summary="게시판 글쓰기">
			<colgroup>
			<col width="90px"/>
			<col width="*"/>
			</colgroup>
			<caption>게시판 글쓰기</caption>
			<tbody>

				<tr>
					<th>제목</th>
					<td><input type="text" name="title" size="45"/></td>
				</tr>
				<tr>
				<th>카테고리</th>
				<td>
				<input type="radio" name="category" value="1"/>국가기관
				<input type="radio" name="category" value="2"/>계좌제
				</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea id="content" name="content" cols="50" 
							rows="8"></textarea></td>
				</tr>
				<tr>
					<th>썸네일</th>
					<td><input type="file" name="E_IMG_S"/></td>
				</tr>
				<tr>
					<th>개강일</th>
					<td>
					<input type="text" name="startyear" size="2"/>년
					<input type="text" name="startmonth" size="2"/>월
					<input type="text" name="startday" size="2"/>일
					</td>
				</tr>
				<tr>
					<th>종료일:</th>
					<td>
					<input type="text" name="endyear" size="2"/>년
					<input type="text" name="endmonth" size="2"/>월
					<input type="text" name="endday" size="2"/>일
					</td>
				</tr>

				<tr>
					<td colspan="2">
						<input type="button" value="저장"
						onclick="sendData()"/>
						<input type="button" value="목록"
						onclick="goList()"/>	
					</td>
				</tr>
			</tbody>
		</table>
	</form>
	</div>
	
	<form action="list.jsp" method="post" name="frm">
		<input type="hidden" name="cPage" value="null"/>
	</form>
	
	
		
	</div>
	<jsp:include page="../../jsp/common/footer.jsp"></jsp:include>

<script type="text/javascript" src="../../js/jquery.stylish-select.js"></script>
<script type="text/javascript">

	
$(function(){
	$('select').sSelect({ddMaxHeight: '300px'});
		$('#content').summernote({
	        tabsize: 2,
	        height: 300,
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
		var frm = new FormData();
		
		frm.append("send_img", file);
		
		$.ajax({
			url: "gov_saveImage.jsp",
			data: frm,
			cache: false,
			contentType: false,
			processData: false,
			type: "POST",
			dataType: "JSON"
		}).done(function(data){
			$('#content').summernote(
					'editor.insertImage',data.url);
			
		}).fail(function(e){
			console.log(e);
		});
	}
	
		function goList(){
			document.frm.submit();
		}
		
		function sendData(){
	 		if(document.forms[0].title.value == ""){
	 			alert("제목을 입력하세요");
				document.forms[0].title.focus();
				return;
	 		}
			document.forms[0].submit();
		}

</script>
</body>
</html>