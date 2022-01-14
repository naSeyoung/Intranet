<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
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
                           alt="User-Profile-Image"> <span>이창주</span> <i
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
               </body>
               </html>