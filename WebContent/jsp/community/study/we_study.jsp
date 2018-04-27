<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <jsp:include page="/jsp/common/menu.jsp" flush="true"></jsp:include>
<jsp:include page="/jsp/common/left.jsp" ></jsp:include>


	<div class="main_con">
		<div class="sub_layout">
			<div class="location">
				<a><img src="images/home.jpg" alt="인크레파스 스터디 자료" /></a><span>커뮤니티</span><span>스터디 자료</span>
			</div>
			<div class="sub_box1">
				<div class="sub_layout2">
					<div class="sub_tit2">
						스터디 자료
						<p>인크레파스 교육센터에서 제공하는 자바, 안드로이드, 자바스크립트 & 웹개발, 데이터베이스 등 동영상 강의입니다. </p>
					</div>
					<div class="search_area">
						<form method="post" >
						    <input type="hidden" name="m_div" id="m_div" value="1"/> 
						    <input type="hidden" name="bname" id="bname" />
							<div class="select_type1 w160">
								<div class="select_type1_1">
									<select id="searchType" name="searchType">
										<option value="0">제목</option>
										<option value="1">내용</option>
										<option value="2">제목+내용</option>
										<option value="3">분류</option>
									</select>
								</div>
							</div><input type="text" class="search_input" name="searchValue" id="searchValue"/><a href="#" class="search_btn">검색</a>
						</form>
					</div>
					<br>
					<div class="sub_tab marmT33">
				
						<span  class="on" id="tab2"><a><strong><img src="images/tab_icon2.png" alt="" /></strong>자바강의</a></span>
						<span  id="tab3"><a><strong><img src="images/tab_icon2.png" alt="" /></strong>안드로이드강의</a></span>
						<span  id="tab4"><a><strong><img src="images/tab_icon2.png" alt="" /></strong>SQL강의</a></span>
						<span  id="tab5"><a><strong><img src="images/tab_icon2.png" alt="" /></strong>웹프로그래밍</a></span>

					</div>
					<div id="table1" class="none">
						<table class="table1">
							<colgroup>
								<col width="*" />
								<col width="140" class="tb_w100" />
							</colgroup>
							<tbody>
							
								<tr>
									<th>
										<a href="javascript:view('163')">자바개발 환경구축</a>
										<p><span>분류 | </span>프로그래밍</p>
									</th>
									<td><span>작성일 | </span>2016/06/21</td>
								</tr>
							
								
							</tbody>
						</table>
					</div>
					<div id="table2" >
						<table class="table1">
							<colgroup>
								<col width="200" />
								<col width="*"  />
							</colgroup>
							<tbody>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/19-1.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('381')">[인크레파스 - JAVA] 19강_네트워크(실습)</a>
										<p><span>분류 | </span>자바프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/19.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('380')">[인크레파스 - JAVA] 19강_네트워크</a>
										<p><span>분류 | </span>자바프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/18.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('379')">[인크레파스 - JAVA] 18강_입출력</a>
										<p><span>분류 | </span>자바프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/17.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('378')">[인크레파스 - JAVA] 17강_스레드</a>
										<p><span>분류 | </span>자바프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/16.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('377')">[인크레파스 - JAVA] 16강_내부클래스</a>
										<p><span>분류 | </span>자바프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/15.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('376')">[인크레파스 - JAVA] 15강_GUI와 JavaFx</a>
										<p><span>분류 | </span>자바프로그래밍</p>
									</th>
									
								</tr>
									
							</tbody>
						</table>
					</div>
					
					<div id="table3" class="none">
						<table class="table1">
							<colgroup>
								<col width="200" />
								<col width="*"  />
							</colgroup>
							<tbody>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/20170623093029_222.png" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('989')">[인크레파스 - 안드로이드] 18강_SwipeRefreshLayout</a>
										<p><span>분류 | </span>안드로이드</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/20170607014805_aaa.png" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('890')">[인크레파스 - 안드로이드] 17강_LayoutInflater</a>
										<p><span>분류 | </span>안드로이드</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/aaa.png" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('878')">[인크레파스 - 안드로이드] 16강_PopupMenu</a>
										<p><span>분류 | </span>안드로이드</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/15.png" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('501')">[인크레파스 - 안드로이드] 15강_ActivityResult</a>
										<p><span>분류 | </span>안드로이드</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/14.png" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('500')">[인크레파스 - 안드로이드] 14강_Canvas</a>
										<p><span>분류 | </span>안드로이드</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/131.png" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('486')">[인크레파스 - 안드로이드] 13강_SharedPrefrences </a>
										<p><span>분류 | </span>안드로이드</p>
									</th>
									
								</tr>
									
							</tbody>
						</table>
					</div>
					
					<div id="table4" class="none">
						<table class="table1">
							<colgroup>
								<col width="200" />
								<col width="*"  />
							</colgroup>
							<tbody>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/81.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('349')">[데이터베이스 with 인크레파스] 8강_DCL&TCL</a>
										<p><span>분류 | </span>데이터베이스</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/71.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('348')">[인크레파스 - 데이터베이스] 7강_서브쿼리</a>
										<p><span>분류 | </span>데이터베이스</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/61.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('347')">[인크레파스 - 데이터베이스] 6강_DML4-삽입, 수정, 삭제</a>
										<p><span>분류 | </span>데이터베이스</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/51.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('346')">[인크레파스 - 데이터베이스] 5강_DML3-그룹화</a>
										<p><span>분류 | </span>데이터베이스</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/41.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('345')">[인크레파스 - 데이터베이스] 4강_관계형데이터</a>
										<p><span>분류 | </span>데이터베이스</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/d3.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('328')">[인크레파스 - 데이터베이스] 3강_DML2</a>
										<p><span>분류 | </span>데이터베이스</p>
									</th>
									
								</tr>
									
							</tbody>
						</table>
					</div>

					<div id="table5" class="none">
						<table class="table1">
							<colgroup>
								<col width="200" />
								<col width="*"  />
							</colgroup>
							<tbody>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/11-1.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('1106')">[웹프로그래밍 with 인크레파스] 11강_서블릿 개요 - 1</a>
										<p><span>분류 | </span>웹프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/53.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('622')">[웹프로그래밍 with 인크레파스] 10강_jQuery - 5</a>
										<p><span>분류 | </span>웹프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/44.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('621')">[웹프로그래밍 with 인크레파스] 10강_jQuery - 4</a>
										<p><span>분류 | </span>웹프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/32.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('620')">[웹프로그래밍 with 인크레파스] 10강_jQuery - 3</a>
										<p><span>분류 | </span>웹프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/23.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('619')">[웹프로그래밍 with 인크레파스] 10강_jQuery - 2</a>
										<p><span>분류 | </span>웹프로그래밍</p>
									</th>
									
								</tr>
							
								<tr>
									<td ><img src="http://increpas.com/ems/upload/studyFile/112.PNG" alt="" class="video_thum"/></td>
									<th>
										<a href="javascript:view('618')">[웹프로그래밍 with 인크레파스] 10강_jQuery - 1</a>
										<p><span>분류 | </span>웹프로그래밍</p>
									</th>
									
								</tr>
									
							</tbody>
						</table>
					</div>

					
					<div id="paging" class="paging" style="display:none"><img src='images/prev.jpg'>&nbsp;<span style='color:#91B7EF;font-weight:bold'>1</span>&nbsp;<img src='images/next.jpg'></div>
					<div id="paging2" class="paging" style="display:block"> <img src='images/prev.jpg'>&nbsp;<span style='color:#91B7EF;font-weight:bold'>1</span>&nbsp;<a href='javascript:list(2)'>2</a>&nbsp;<a href='javascript:list(3)'>3</a>&nbsp;<a href='javascript:list(4)'>4</a>&nbsp;<a href='javascript:list(5)'>5</a>&nbsp;<img src='images/next.jpg'></div>
					
					<div id="paging3" class="paging" style="display:none"> <img src='images/prev.jpg'>&nbsp;<span style='color:#91B7EF;font-weight:bold'>1</span>&nbsp;<a href='javascript:list(2)'>2</a>&nbsp;<a href='javascript:list(3)'>3</a>&nbsp;<a href='javascript:list(4)'>4</a>&nbsp;<img src='images/next.jpg'></div>
					
					<div id="paging4" class="paging" style="display:none"> <img src='images/prev.jpg'>&nbsp;<span style='color:#91B7EF;font-weight:bold'>1</span>&nbsp;<a href='javascript:list(2)'>2</a>&nbsp;<img src='images/next.jpg'></div>

					<div id="paging5" class="paging" style="display:none"> <img src='images/prev.jpg'>&nbsp;<span style='color:#91B7EF;font-weight:bold'>1</span>&nbsp;<a href='javascript:list(2)'>2</a>&nbsp;<a href='javascript:list(3)'>3</a>&nbsp;<a href='javascript:list(4)'>4</a>&nbsp;<img src='images/next.jpg'></div>

					
				</div>
				<jsp:include page="/jsp/common/right.jsp" ></jsp:include>
			</div>
		</div>
	</div>

<jsp:include page="/jsp/common/footer.jsp" ></jsp:include>



</body>
</html>