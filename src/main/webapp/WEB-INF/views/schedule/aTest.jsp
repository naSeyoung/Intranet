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
<!-- datetimepicker -->
<link
	href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"
	type="text/javascript"></script>
<script
	src=" https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"
	type="text/javascript"></script>



<!--timepicker -->
<link rel="stylesheet"
	href="resources/css/fullcalendar/jquery-ui-timepicker-addon.css" />
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<!--  제이쿼리 js -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<!--  제이쿼리 ui js -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	
</script>


<body>
	<!-- Pre-loader start -->
	<%
		String navbarPage = "../navbar.jsp";
		String headerPage = "../header.jsp";
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
														<h3>TEST</h3>
														<!-- 표 추가  -->
														<div>
															<H5>DB 연동 확인^</H5>

															<table border="1">
																<thead>
																	<tr>
																		<th>번호</th>
																		<th>일정종류</th>
																		<th>공개여부</th>
																		<th>제목</th>
																		<th>장소</th>
																		<th>내용</th>
																		<th>시작일</th>
																		<th>종료일</th>
																	</tr>
																</thead>
																<tbody>
																	<c:if test="${empty list }">
																		<tr>
																			<td class="first" colspan="2">등록된 글이 없습니다.</td>
																		</tr>
																	</c:if>
																	<c:forEach var="scheList" items="${list }" varStatus="status">
																		<tr>
 																			<td>
																			<a href="javascript:openCalModi('${scheList.scheSeq}')"><c:out value="${scheList.scheSeq}"></c:out></a>
																			</td>
																			<td>${scheList.mstSeq}</td>
																			<td>${scheList.scheType}</td>
 																			<td>
																			<a href="javascript:openCalDetail('${scheList.scheSeq}')"><c:out value="${scheList.title}"></c:out></a>
 																			</td> 
																			<td>${scheList.place}</td>
																			<td>${scheList.contents}</td>
																			<td>${scheList.startDt}</td>
																			<td>${scheList.endDt}</td>

																		</tr>
																	</c:forEach>
																</tbody>
															</table>
															<input type="button" value="등록"
																onclick="location.href='/calendarAdd'">

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
		<script>
		function openCalModi(scheSeq) {
			console.log(scheSeq)
			location.href="/calendarModi?scheSeq=" + escape(scheSeq);
			
		}
		function openCalDetail(scheSeq) {
			console.log(scheSeq)
			location.href="/calendarDetail?scheSeq=" + escape(scheSeq);
			
		}
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