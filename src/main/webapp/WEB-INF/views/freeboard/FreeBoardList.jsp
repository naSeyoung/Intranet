<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="ko">

<head>
<title>이젠 인트라넷</title>
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<!-- 지워도되나
   <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" /> -->

<!-- Favicon icon -->
<link rel="icon" href="../resources/assets/images/favicon.ico"
	type="image/x-icon">
<!-- Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700"
	rel="stylesheet">
<!-- waves.css -->
<link rel="stylesheet"
	href="../resources/assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- Required Fremwork -->
<link rel="stylesheet" type="text/css"
	href="../resources/assets/css/bootstrap/css/bootstrap.min.css">
<!-- waves.css -->
<link rel="stylesheet"
	href="../resources/assets/pages/waves/css/waves.min.css"
	type="text/css" media="all">
<!-- themify icon -->
<link rel="stylesheet" type="text/css"
	href="../resources/assets/icon/themify-icons/themify-icons.css">
<!-- font-awesome-n -->
<link rel="stylesheet" type="text/css"
	href="../resources/assets/css/font-awesome-n.min.css">
<link rel="stylesheet" type="text/css"
	href="../resources/assets/css/font-awesome.min.css">
<!-- scrollbar.css -->
<link rel="stylesheet" type="text/css"
	href="../resources/assets/css/jquery.mCustomScrollbar.css">
<!-- Style.css -->
<link rel="stylesheet" type="text/css"
	href="../resources/assets/css/style.css">
<!-- DatePicker -->	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>


<body>
	<!-- Pre-loader start -->
<%
String navbarPage = "../navbar.jsp";
String headerPage = "../header.jsp";
%>
<!-- Pre-loader end -->
<div id="pcoded" class="pcoded">
	<div class="pcoded-overlay-box"></div>
<div class="pcoded-container navbar-wrapper">
	<!-- .navbar header-navbar pcoded-header
header 있는 자리  -->
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
					<h2>자유게시판</h2>
					<div class="card-header-right">
						<ul class="list-unstyled card-option">
							<li><i class="fa fa fa-wrench open-card-option"></i>
							</li>
							<li><i class="fa fa-window-maximize full-card"></i>
							</li>
							<li><i class="fa fa-minus minimize-card"></i></li>
							<li><i class="fa fa-refresh reload-card"></i></li>
							<li><i class="fa fa-trash close-card"></i></li>
						</ul>
					</div>
				</div>
				<div class="card-block table-border-style">
					<!--         <div style="font-size:30px; padding-bottom:5px;">소제목</div> -->
<!-- ----------------------datepicker----------------------------------------------- -->
<div class="fixed-box">
	<form id="searchFrm" name="searchFrm">
		<input class ="datepicker" type="hidden" name="startDate"/> 
		<input class ="datepicker" type="hidden" name="endDate" />
		
	</form>

</div>
<!-- --------------------------------------------------------------------- -->
</div>
<div class="card-block table-border-style">
	<div class="table-responsive" style="margin-top: 10px;">
					<table class="main-table02">
						<thead>
							<tr>
								<th scope="row" class="table-info"
									id="main-table02-num">번호</th>
								<th scope="row" class="table-info">제목</th>
								<th scope="row" class="table-info">작성자</th>
								<th scope="row" class="table-info">작성일자</th>
							</tr>
						<thead>
						<tbody>
							<tr>
								<td id="main-table02-num">1</td>
								<td style="width:60%;">mark</td>
								<td>mark</td>
								<td>mark</td>
							</tr>
							<tr>
								<td id="main-table02-num">2</td>
								<td >mark</td>
								<td>mark</td>
								<td>mark</td>
							</tr>
								<tr>
								<td id="main-table02-num">2</td>
								<td >mark</td>
								<td>mark</td>
								<td>mark</td>
							</tr>
						</tbody>
					</table>
					<div>
						<button class="main-btn01">수정</button>
						<button class="main-btn01">목록</button>

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
</div>
<script>
$(function(){
  $('.datepicker').datepicker();
})

</script>


<!-- Required Jquery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  

<script type="text/javascript"
	src="../resources/assets/js/jquery/jquery.min.js "></script>
<script type="text/javascript"
	src="../resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
<script type="text/javascript"
	src="../resources/assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript"
	src="../resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
<!-- waves js -->
<script src="../resources/assets/pages/waves/js/waves.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript"
	src="../resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>

<!-- slimscroll js -->
<script
	src="../resources/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

<!-- menu js -->
	<script src="../resources/assets/js/pcoded.min.js"></script>
	<script src="../resources/assets/js/vertical/vertical-layout.min.js "></script>

	<script type="text/javascript" src="../resources/assets/js/script.js "></script>
</body>

</html>