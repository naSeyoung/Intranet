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
	
<style>
.esMbtn01{
	/* margin-bottom:10%; */
/* 	padding:2x 3px 2px 3px; */
	width:70px;
	margin-right:5%;
	margin-bottom:1%;
	cursor:pointer;
	margin-left:92%;
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
.main-btn01:active, .main-btn01:focus { outline:none !important;}

</style>	
</head>
<!-- fullcalendar js  -->
<script type="text/javascript" src="/resources/js/fullcalendar/fullcalendar.js"></script>
<script type="text/javascript" src="/resources/js/fullcalendar/theme-chooser.js"></script>
	
<!-- ***추가**  -->


<!-- fullcalendar 언어 설정관련 script -->
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>	
    <script>

    document.addEventListener('DOMContentLoaded', function() {
    	  var calendarEl = document.getElementById('calendar');

    	  var calendar = new FullCalendar.Calendar(calendarEl, {
    	    googleCalendarApiKey: 'AIzaSyAJ9dIKkvU-vS9Mwala5mPBxZuvnNcuZs0',
    	    eventSources: [
    	    {
    	          googleCalendarId: 'qduatr3seur835pk4aolok2900@group.calendar.google.com',
    	          className: '공휴일',
    	          color: '#be5683', 
    	        },
    	      {
    	          googleCalendarId: 'ko.south_korea#holiday@group.v.calendar.google.com',
    	          className: '휴일',
    	            color: 'blue',
    	            textColor: 'white' 
    	        }
    	    ]
    	  });
    	  calendar.render();
    	});
    
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
														<h3>월간일정</h3>
													</div>
													<div class="card-block table-border-style">
													<div id="addCal"><a href="/addCalendar"><input type="button" class="esMbtn01" value="일정등록"></a></div>
													<div id='calendar'></div>
													<div id='calendar2'></div>
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