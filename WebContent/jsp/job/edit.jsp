<%@page import="dao.JobDAO"%>
<%@page import="vo.JobVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String jidx =request.getParameter("j_idx");
String cPage = request.getParameter("cPage");
JobVO vo =JobDAO.getJob(jidx);
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
      
      <link rel="stylesheet" type="text/css" href="../../css/main.css"/>
      <link rel="stylesheet" type="text/css" href="../../css/common.css"/>
      
      <script src="../../js/jquery-1.10.2.min.js" charset="utf-8"></script>
      <script type="text/javascript" src="../../js/main.js"></script>
      <script type="text/javascript" src="../../js/jquery.min.js"></script>
      <script type="text/javascript" src="../../js/jquery.mousewheel.min.js"></script>
      <script src="../../js/slickcustomscroll.js"></script>  



<title>Insert title here</title>
<style type="text/css">

</style>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote-lite.js"></script>
<script src="js/summernote/lang/summernote-ko-KR.js"></script>

<script type="text/javascript">
	function sendData(){
	    
	    if(document.forms[0].u_process.value == ""){
	       alert("제목을 입력하세요");
	      document.forms[0].title.focus();
	      return;
	    }
	    if(document.forms[0].u_name.value == ""){
	       alert("교육생명을 입력하세요");
	      document.forms[0].writer.focus();
	      return;
	    }
	   document.forms[0].submit();
	}
</script>
</head>

 <body>
            <jsp:include page="../../jsp/common/menu.jsp"></jsp:include>
            <jsp:include page="../../jsp/common/left.jsp"></jsp:include>
         
            <div class="main_con">
               <div class="sub_layout">
                  <div class="location">
                     <a><img src="images/home.jpg" alt="인크레파스 고객센터" /></a><span>고객센터</span><span>취업현황</span>
                  </div>
                  <div class="sub_box1">
                     <div class="sub_layout2">
                        <div class="sub_tit2">
                           취업현황
                           <p>인크레파스 교육생들의 노력과 취업방향 정보입니다. 더 많은 분들께서 인크레파스와 함께 IT취업 준비하시고 더 좋은 대우를 받는 개발자(프로그래머)가 되시길 축복합니다.</p>
                        </div>
                        <div class="sub_box5_3a">
                        
                        <form action="edit_ok.jsp" method="post">
                        	<input type="hidden" name="j_idx" value="<%=vo.getJ_idx()%>"/>
                        	<input type="hidden" name="cPage" value="<%=cPage%>"/>
                           <table>
                              <colgroup>
                                 <col width="140" />
                                 <col width="*" />
                              </colgroup>
                              
                              <tbody>
                              <tr>
                                    <th>제목 </th>
                                    <td><input type="text" id="j_title" name="u_title" value="<%=vo.getJ_title() %>"></td>
                                 </tr>
                                 
                                 
                                 <tr>
                                    <th>교육생 명 </th>
                                    <td><input type="text" id="j_name" name="u_name" value="<%=vo.getJ_student_name() %>"></td>
                                 </tr>
                                 <tr>
                                    <th>생년</th>
                                    <td><input type="text" id="j_birth" name="u_birth" value="<%=vo.getJ_birth() %>"></td>
                                 </tr>
                                 <tr>
                                    <th>과정명</th>
                                    <td><input type="text" id="j_process" name="u_process" value="<%=vo.getJ_process() %>"></td>
                                 </tr>
                                 <tr>
                                    <th>회사명</th>
                                    <td><input type="text" id="j_company" name="u_company" value="<%=vo.getJ_company() %>"></td>
                                 </tr>
                                 <tr>
                                    <th>근무지역</th>
                                    <td><input type="text" id="j_location" name="u_location" value="<%=vo.getJ_location() %>"></td>
                                 </tr>
                                 <tr>
                                    <th>입사일</th>
                                    <td><input type="text" id="j_hiredate" name="u_hiredate" value="<%if(vo.getJ_hiredate() != null) 
                                    																	out.print(vo.getJ_hiredate().substring(0, 10)); %>"></td>
                                 </tr>
                              </tbody>
                           </table>
                            
                        <div class="bo_btn">
                        <a href="job_present.jsp?cPage=<%=cPage%>">목록</a>
                          <input type="button" value="저장"  onclick="sendData()"/>
                        </div>
                     </form>
                        </div>                        
                     </div>                     
                  </div>
            <jsp:include page="../../jsp/common/right.jsp"></jsp:include>
               </div>
            </div>
            <jsp:include page="../../jsp/common/footer.jsp"></jsp:include>
                   
                   
                     <form action="job_present.jsp" method="post" name="frm">
                        <input type="hidden" name="cPage" value="<%=cPage %>"/>
                     </form>
                     
          <script type="text/javascript">
          function goList(){
  			document.frm.submit();
  		}
          </script>           
          			           
         </body>
</html>