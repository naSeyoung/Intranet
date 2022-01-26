<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="ko">

<head>
<title>이젠캘린더</title>
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Favicon icon -->
<link rel="icon" href="resources/assets/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet"
	href="resources/assets/pages/waves/css/waves.min.css" type="text/css"
	media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet"
	href="resources/assets/pages/waves/css/waves.min.css" type="text/css"
	media="all">
<!-- themify icon -->
<link rel="stylesheet" type="text/css"
	href="resources/assets/icon/themify-icons/themify-icons.css">
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/font-awesome-n.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/font-awesome.min.css">
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/jquery.mCustomScrollbar.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css"
	href="resources/assets/css/style.css">

<!-- fullcalendar css-->
<link rel="stylesheet" type="text/css"
	href="resources/css/fullcalendar/fullcalendar.css">
	
	
<!-- 버튼css  -->
<style>
.esAddbtn{
	/* margin-bottom:10%; */
/* 	padding:2x 3px 2px 3px; */
	width:70px;
	
	margin-left :2%;
	margin-bottom:1%;
	cursor:pointer;
	background-color:#448aff;
 	border-color:#448aff; 
	color:#fff;
	border-radius:4px;
	vertical-align:middle !important;
	font-size:13px;
	position:relative;
	font-weight:520;
	height:30px !important;
	border: 0;outline: 0;
	white-space:nowrap;
	overflow:hidden; 
}


.card .card-header h5:after {
	content: "";
	background-color: #448aff;
	position: absolute;
	left: -20px;
	top: 0;
	width: 4px;
	height: 20px;
}

.card .card-header h3:after {
	content: "";
	background-color: #448aff;
	position: absolute;
	left: 0px;
	width: 4px;
	height: 30px;
}


</style>
</head>
<!-- fullcalendar js  -->
<script type="text/javascript"
	src="/resources/js/fullcalendar/fullcalendar.js"></script>
<script type="text/javascript"
	src="/resources/js/fullcalendar/theme-chooser.js"></script>

<!-- ***추가**  -->


<!-- fullcalendar 언어 설정관련 script -->
<script
	src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>
	
<!--datepicker  -->
<!--  제이쿼리 ui css -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 
<!--  제이쿼리 js -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 
<!--  제이쿼리 ui js -->
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 
 <!--timepicker -->
 <link rel="stylesheet" href="resources/css/jquery-ui-timepicker-addon.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script>
	
</script>


<body>
	<!-- Pre-loader start -->
	<%
		String navbarPage = "navbar.jsp";
		String headerPage = "header.jsp";
	%>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-container navbar-wrapper">
			<!-- .navbar header-navbar pcoded-headerheader 있는 자리  -->
			<jsp:include page="<%=headerPage%>" />
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<!-- .pcoded-navbar 부분 -->
					<jsp:include page="<%=navbarPage%>" />
					<div class="pcoded-content">
						<!-- 지우지말기 -->
						<!-- Page-header end -->
						<div class="pcoded-inner-content">
							<!-- Main-body start -->
							<div class="main-body">
								<div class="page-wrapper">
									<!-- Page-body start -->
									<div class="page-body">
										<div class="row">
											<div class="col-sm-12">
												<div class="card">
													<div class="card-header">
														<h3>일정등록</h3>
													</div>
														<!-- 표 추가  -->
														<div class="card-block table-border-style">
															<div class="table-responsive" style="margin-top: 10px;">
																<table class="main-table02">
																	<tbody>
																		<tr>
																			<td>*구분</td>
																			<td>
																				<select id="gd" name="gd">
																					<option value="00">개인 일정</option>
																					<option value="01">감리</option>
																					<option value="02">출장</option>
																					<option value="03">회의</option>
																				</select>
																			</td>
																			<td>공개</td>
																			<td>
																				<select id="open_yn" name="open_yn">
																					<option value="Y">전체공개</option>
																					<option value="N">개인공개</option>
																				</select>
																			</td>
																		</tr>
																		<tr>
																			<td>*제목</td>
																			<td colspan="3"><input type="text" name="cal_title" id="cal_title" placeholder="제목을 입력하세요" style="width : 50%"></td>
																		</tr>
																		<tr>
																			<td>장소</td>
																			<td colspan="3"><input type="text" name="cal_place" id="cal_place" placeholder="장소를 입력하세요" style="width : 50%"></td>
																		</tr>
																		<tr>
																			<td>시작일</td>
																			<td>
																				<input type="text" id="cal_start">
																			</td>
																			<td>종료일</td>
																			<td>
																				<input type="text" id="cal_end">
																			</td>
																		</tr>
																		<tr>
																			<td>내용</td>
																			<td colspan="3"><textarea cols="70" rows="10" name="cal_content" id="cal_content"></textarea></td>
																		</tr>
																	</tbody>
																</table>
																<div>

																	<button class="esAddbtn" style="float : right; margin-top :3%;">목록</button>
																	<button class="esAddbtn" style="float : right; margin-top :3%;">저장</button>
															</div>
														</div>
													</div>
													<div class="card-header">
														<h5>첨부파일</h5><br>
													</div>
														<button class="esAddbtn" style="float : left; margin-top : -1%;">추가</button>
														<div class="card-block table-border-style">
															<div class="table-responsive">
																<table class="main-table02">
																	<tbody>
																		<tr>
																			<td>와아악</td>
																			<td colspan="5">잉</td>
																		</tr>

																	</tbody>
																</table>
														</div>
														<input type="text" id="datepicker">
														<div>tq
														<input type="text" id="es">
														</div>
													</div>
													</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- cal 은솔js  -->
	
	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="resources/js/jquery-ui-timepicker-addon.js"></script>
<script>

</script>


	<script>
	
	$(function(){
		$("#cal_start , #cal_end").datepicker({
				  dateFormat: "yy-mm-dd",
				  changeMonth: true,
				  changeYear: true,
				  monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
				  dayNamesMin: ['일','월','화','수','목','금','토'],
				  weekHeader: 'Wk',
				  changeMonth: true,         // 월변경가능
				  changeYear: true,          // 년변경가능
				  yearRange:'2022:+5',         // 연도 셀렉트 박스 범위(현재와 같으면 1988~현재년)
				  showMonthAfterYear: true,       // 년 뒤에 월 표시
				  buttonText: '날짜를 선택하세요',
				  autoSize: false,           // 오토리사이즈(body등 상위태그의 설정에 따른다)
				  showOn: "focus",           // 엘리먼트와 이미지 동시 사용
					
				  timepicker : true,
				  timeFormat:"hh:ii AA"

				});
		
		
		});
	</script>

	<!-- Required Jquery -->
	<script type="text/javascript"
		src="resources/assets/js/jquery/jquery.min.js "></script>
	<script type="text/javascript"
		src="resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
	<script type="text/javascript"
		src="resources/assets/js/popper.js/popper.min.js"></script>
	<script type="text/javascript"
		src="resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
	<!-- waves js -->
	<script src="resources/assets/pages/waves/js/waves.min.js"></script>
	<!-- jquery slimscroll js -->
	<script type="text/javascript"
		src="resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>

	<!-- slimscroll js -->
	<script
		src="resources/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

	<!-- menu js -->
	<script src="resources/assets/js/pcoded.min.js"></script>
	<script src="resources/assets/js/vertical/vertical-layout.min.js "></script>

	<script type="text/javascript" src="resources/assets/js/script.js "></script>
</body>

</html>