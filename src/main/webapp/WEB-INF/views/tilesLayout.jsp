<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>이젠 인트라넷</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
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
</head>
<!-- Required Jquery -->
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
<script type="text/javascript" src="../resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
	
<!-- slimscroll js -->
<script src="../resources/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

<!-- menu js -->
<script src="../resources/assets/js/pcoded.min.js"></script>
<script src="../resources/assets/js/vertical/vertical-layout.min.js "></script>

<script type="text/javascript" src="../resources/assets/js/script.js "></script>
<body>
	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<!-- .navbar header-navbar pcoded-header
<!-- header 있는 자리  -->
			<tiles:insertAttribute name="siteTop" />
			<%-- <jsp:include page="<%=headerPage%>" /> --%>
			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<!-- .pcoded-navbar 부분 -->
					<%-- <jsp:include page="<%=navbarPage%>" /> --%>
				<tiles:insertAttribute name="leftNav" />
				<tiles:insertAttribute name="body" />
				</div>
			</div>
		</div>
	</div>
<%-- 	<div id="wrap">
		<div id="header">
			<tiles:insertAttribute name="siteTop" />
		</div>
		<div id="menu">
				<tiles:insertAttribute name="leftNav" />
			</div>
			<div id="contents">
				<tiles:insertAttribute name="body" />
			</div>
	</div>
 --%>
	<%-- 	<tiles:insertAttribute name="css" /> --%>
</body>
</html>