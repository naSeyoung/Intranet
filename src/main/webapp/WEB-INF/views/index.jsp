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
</head>


<body>
	<!-- Pre-loader start -->

	<!-- Pre-loader end -->
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
			<nav class="navbar header-navbar pcoded-header">
				<div class="navbar-wrapper">
					<div class="navbar-logo">
						<div class="mobile-search waves-effect waves-light"></div>
						<div>
							<table class="company-name-cls">
								<tr>
									<td><a href="index.jsp"> 이젠 솔루션</a></td>
								</tr>
							</table>
						</div>
					</div>
					<div class="navbar-container container-fluid">

						<ul class="nav-right">
							<li class="header-notification">

								<ul class="show-notification">




								</ul>
							</li>
							<li class="user-profile header-notification"><a href="#!"
								class="waves-effect waves-light"> <img
									src="resources/assets/images/avatar-4.jpg" class="img-radius"
									alt="User-Profile-Image"> <span>John Doe</span> <i
									class="ti-angle-down"></i>
							</a>
								<ul class="show-notification profile-notification">
									<li class="waves-effect waves-light"><a href="#!"> <i
											class="ti-settings"></i> Settings
									</a></li>
									<li class="waves-effect waves-light"><a
										href="user-profile.html"> <i class="ti-user"></i> Profile
									</a></li>
									<li class="waves-effect waves-light"><a
										href="email-inbox.html"> <i class="ti-email"></i> My
											Messages
									</a></li>
									<li class="waves-effect waves-light"><a
										href="auth-lock-screen.html"> <i class="ti-lock"></i> Lock
											Screen
									</a></li>
									<li class="waves-effect waves-light"><a
										href="auth-normal-sign-in.html"> <i
											class="ti-layout-sidebar-left"></i> Logout
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
					<nav class="pcoded-navbar">
						<div class="sidebar_toggle">
							<a href="#"><i class="icon-close icons"></i></a>
						</div>
						<div class="pcoded-inner-navbar main-menu">
							<div class="">

								<div class="main-menu-content">
									<ul>
										<li class="more-details"><a href="user-profile.html"><i
												class="ti-user"></i>View Profile</a> <a href="#!"><i
												class="ti-settings"></i>Settings</a> <a
											href="auth-normal-sign-in.html"><i
												class="ti-layout-sidebar-left"></i>Logout</a></li>
									</ul>
								</div>
							</div>
							<div class="p-15 p-b-0">
								<form class="form-material"></form>
							</div>
							<div class="pcoded-navigation-label">Navigation</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="active"><a href="index.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-home"></i><b>D</b></span> <span class="pcoded-mtext">Dashboard</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">UI Element</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu"><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
										class="pcoded-mtext">Basic</span> <span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=" "><a href="breadcrumb.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Breadcrumbs</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="button.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Button</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="accordion.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Accordion</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tabs.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Tabs</span> <span class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="color.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Color</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="label-badge.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Label Badge</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="tooltip.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Tooltip And Popover</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="typography.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Typography</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=" "><a href="notification.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Notifications</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>
							</ul>
							<div class="pcoded-navigation-label">Forms</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="form-elements-component.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-layers"></i><b>FC</b></span> <span class="pcoded-mtext">Form</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">Tables</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="bs-basic-table.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-receipt"></i><b>B</b></span> <span class="pcoded-mtext">Table</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">Chart And Maps</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class=""><a href="chart-morris.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-bar-chart-alt"></i><b>C</b></span> <span
										class="pcoded-mtext">Charts</span> <span class="pcoded-mcaret"></span>
								</a></li>
								<li class=""><a href="map-google.html"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-map-alt"></i><b>M</b></span> <span class="pcoded-mtext">Maps</span>
										<span class="pcoded-mcaret"></span>
								</a></li>
							</ul>
							<div class="pcoded-navigation-label">Pages</div>
							<ul class="pcoded-item pcoded-left-item">
								<li class="pcoded-hasmenu "><a href="javascript:void(0)"
									class="waves-effect waves-dark"> <span class="pcoded-micon"><i
											class="ti-id-badge"></i><b>A</b></span> <span class="pcoded-mtext">Pages</span>
										<span class="pcoded-mcaret"></span>
								</a>
									<ul class="pcoded-submenu">
										<li class=""><a href="auth-normal-sign-in.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Login</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class=""><a href="auth-sign-up.html"
											class="waves-effect waves-dark"> <span
												class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
												class="pcoded-mtext">Registration</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
										<li class="">
										<a href="/sample-page"	class="waves-effect waves-dark">
										 <span class="pcoded-micon"><i
													class="ti-layout-sidebar-left"></i><b>S</b></span> <span
												class="pcoded-mtext">Sample-Page</span> <span
												class="pcoded-mcaret"></span>
										</a></li>
									</ul></li>
							</ul>
						</div>
					</nav>
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
														<h2>게시판</h2>
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
														<div class="table-responsive">

															<br> <br> <br>
															<table class="table">
																<thead>
																	<tr>
																		<th>no</th>
																		<th>목록1</th>
																		<th>목록2</th>
																		<th>목록3</th>
																	</tr>
																<thead>
																<tbody>
																	<tr>
																		<th scope="row" class="table-info">1</th>
																		<td>mark</td>
																		<td>mark</td>
																		<td>mark</td>
																	</tr>
																	<tr>
																		<th scope="row" class="table-info">1</th>
																		<td>mark1</td>
																		<td>mark2</td>
																		<td>mark3</td>
																	</tr>
																	<tr>
																		<th scope="row" class="table-info">1</th>
																		<td>mark1</td>
																		<td>mark2</td>
																		<td>mark3</td>
																	</tr>
																</tbody>
															</table>
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
