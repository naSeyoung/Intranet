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

<!-- 팔레트  -->
<script src="https://cdn.jsdelivr.net/npm/@jaames/iro@5"></script>

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
														<h3>일정 설정</h3>
													</div>
													<!-- 표 추가  -->
                                       <div class="card-block table-border-style" >
                                          <div class="table-responsive">
                                          <form action="/setCalendar" method="post" name="cal_setform" id="cal_setform">
                                       <!-- 파일 표추가 -->
                                             <table class="main-table02" style="margin-top: 3%;">
                                             	<colgroup>
                                             	<col width="20%">
                                             	<col width="60%">
                                             	<col width="20%">
                                             	</colgroup>
                                                <tbody>
                                                   <tr>
                                                      <th>일정명</th>
                                                      <td  colspan="2"  style="text-align: center;"><input type="text" autocomplete="off" name="calSetTitle" id="calSetTitle" value="" style="margin-left: -20%;"></td>
                                                   </tr>
                                                   <tr>
                                                      <th style="vertical-align: inherit;">색선택</th>
                                                      <td style="text-align: center;">
<!--                                                       	<input type="color" value=""><input type="text" value="" name="cal_color" id="cal_color"> -->
                                                      	<div id="colorPicker" style="margin-left: 38%;">
                                                      	</div>
                                                      </td>
                                                      	<td>
                                                      	<div style="text-align: center;">
                                                      	<input type="text" id="calHexInput" name="calHexInput" value="" style="width:100px; text-align: center; margin-top: 50%;"></input>
                                                      	</div>
                                                      	</td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                             <div>
                                                <a href="/setCalendar"><input type="button"class="main-btn01" value="목록"style="float: right; margin-top: 3%; margin-left: 2%; margin-right: 3%;"></a>
                                                <a href="javascript:submit_calSetForm(document.cal_setform);"><input type="button"class="main-btn01" value="등록"style="float: right; margin-top: 3%; margin-left: 1%;"></a>
                                             </div>
                                             </form>
                                          </div>
                                       </div> test 앙
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
   
 var colorPicker = new iro.ColorPicker("#colorPicker", {
   width: 200,
   
    color: "#ff0000",
   borderWidth: 1,
   borderColor: "#fff",
 });

 var calHexInput = document.getElementById("calHexInput");

 colorPicker.on(["color:init", "color:change"], function(color){
	 calHexInput.value = color.hexString;
 });

 calHexInput.addEventListener('change', function() {
   colorPicker.color.hexString = this.value;
 });
  	
  	
   function submit_calSetForm(form) {
 	  if($("#calSetTitle").val() == "") {
 		  alert("일정명을 선택해주세요");
 		  return false;
 	  } 
      form.action = "/setCalendarAdded";
      form.submit();
   };
   
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