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
<link rel="stylesheet" type="text/css" href="resources/css/fullcalendar/fullcalendar.css">
	
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
          expandRows: true,
          headerToolbar: {
            left: 'prev next today',
            center: 'title',
            right: 'dayGridMonth,timeGridWeek,timeGridDay listMonth'
          },
          initialView: 'dayGridMonth',
          navLinks: true,
          droppable : true,
          selectable : true,
          editable: false,
          nowIndicator: true,
          dayMaxEvents: true,
          eventColor : 'red',
          locale : 'ko',
          views                     : {
              month : {
                columnFormat : 'dddd'
              },
              agendaWeek : {
                columnFormat : 'M/D ddd',
                titleFormat  : 'YYYY년 M월 D일',
                eventLimit   : false
              },
              agendaDay : {
                columnFormat : 'dddd',
                eventLimit   : false
              },
              listWeek : {
                columnFormat : ''
              }
            },
          // contentHeight : ''
        googleCalendarApiKey: 'AIzaSyAJ9dIKkvU-vS9Mwala5mPBxZuvnNcuZs0', //구글캘린더 연동
  	    eventSources: [
    	    	{
    	          googleCalendarId: 'qduatr3seur835pk4aolok2900@group.calendar.google.com', //공휴일 데이터 가져오기
    	          className: '공휴일',
    	          color: '#be5683'
    	        },
    	        {
    	        	url : "/aa",
    	        	method : 'POST',
    	        	
    	        	color : "yellow",
    	        	textColor : "blue"
    	        }
    	    ],
          events: [
            {
//               groupId: 999,
              title: '월간일정테스트',
              start: '2022-02-09T16:00:00'
            },
            {
              title: 'TEST',
              start: '2022-02-12T10:30:00',
              end: '2022-02-12T12:30:00'
            },
            {
              title: 'Click for Google',
              url: 'http://google.com/',
              start: '2022-02-25'
            }
          ]
          , eventClick : function(event) {
        	  if(event.url){
        		  window.open(event.url);
        		  return false;
        	  }
          }
        });

        calendar.render();
      });
</script>
<script>
    //fullcalendar
	 document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
        initialView: 'dayGridMonth',
        initialDate: '2022-02-12',
        locale: 'ko',
        headerToolbar: {
            left: 'dayGridMonth,timeGridWeek,timeGridDay',
            center: 'title',
            right: 'prev,next today'
        },
        editable: true,
        dayMaxEventRows:true,

        events: [
            {
            title: '[영업부] 2020년 하반기 영업실적',
            description: '2020년 하반기 영업실적 안내입니다.',
            start: '2022-02-01',
            },
        ],
    
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
<!-- 													<div id="addCal"><button class="esMbtn01"  onclick="location.href='addCalendar'">일정등록</button></div> -->
													<div id="addCal"><button class="main-btn01" style="margin-bottom: 1%; margin-left: 90%;" onclick="location.href='addCalendar'">등록</button></div>
													<div id='calendar'></div>
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