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

</head>

<body>
 <nav class="pcoded-navbar">
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
                  <!--    <div class="pcoded-navigation-label">Navigation</div> -->
                     <ul class="pcoded-item pcoded-left-item">
                        <li class="active"><a href="/intranet "
                           class="waves-effect waves-dark"> <span class="pcoded-micon"><i
                                 class="ti-home"></i><b>D</b></span> <span class="pcoded-mtext">Dashboard</span>
                              <span class="pcoded-mcaret"></span>
                        </a></li>
                     </ul>
                   <!--   <div class="pcoded-navigation-label">UI Element</div> -->
                     <ul class="pcoded-item pcoded-left-item">
                        <li class="pcoded-hasmenu"><a href="javascript:void(0)"
                           class="waves-effect waves-dark"> <span class="pcoded-micon"><i
                                 class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
                              class="pcoded-mtext">일정관리</span> <span class="pcoded-mcaret"></span>
                        </a>
                           <ul class="pcoded-submenu">

                              <li class=" "><a href="/ezenCalendar"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">월별일정</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                               <li class=" "><a href="/setCalendar"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">일정설정</span> <span class="pcoded-mcaret"></span>
                              </a></li>
                     </ul>
                     </li>
                     </ul>
                     <!-- --------------------------------------------------------------------------------------------------- -->
                      <ul class="pcoded-item pcoded-left-item">
                        <li class="pcoded-hasmenu"><a href="javascript:void(0)"
                           class="waves-effect waves-dark"> <span class="pcoded-micon"><i
                                 class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
                              class="pcoded-mtext">주간보고</span> <span class="pcoded-mcaret"></span>
                        </a>
                           <ul class="pcoded-submenu">
                              <li class=" "><a href="breadcrumb.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">주간보고 목록</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="button.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">주간보고 등록</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=""><a href="accordion.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">주간보고 상세</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="tabs.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">주간보고 수정</span> <span class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="color.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">주간보고 관리</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                     </ul>
                     </li>
                     </ul>
                      <!-- --------------------------------------------------------------------------------------------------- -->
                      <ul class="pcoded-item pcoded-left-item">
                        <li class="pcoded-hasmenu"><a href="javascript:void(0)"
                           class="waves-effect waves-dark"> <span class="pcoded-micon"><i
                                 class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
                              class="pcoded-mtext">근태관리</span> <span class="pcoded-mcaret"></span>
                        </a>
                           <ul class="pcoded-submenu">
                              <li class=" "><a href="breadcrumb.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">출퇴근관리</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="button.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">휴무내역</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=""><a href="accordion.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">근무현황</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                     </ul>
                     </li>
                     </ul>
                      <!-- --------------------------------------------------------------------------------------------------- -->
                      <ul class="pcoded-item pcoded-left-item">
                        <li class="pcoded-hasmenu"><a href="javascript:void(0)"
                           class="waves-effect waves-dark"> <span class="pcoded-micon"><i
                                 class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
                              class="pcoded-mtext">전자결재</span> <span class="pcoded-mcaret"></span>
                        </a>
                           <ul class="pcoded-submenu">
                              <li class=" "><a href="breadcrumb.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">결재함</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="button.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">참조함</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=""><a href="accordion.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">반려함</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="tabs.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">승인함</span> <span class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="color.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">기안 등록</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="color.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">기안 상세</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="color.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">기안 수정</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                     </ul>
                     </li>
                     </ul>
                         <!-- --------------------------------------------------------------------------------------------------- -->
                      <ul class="pcoded-item pcoded-left-item">
                        <li class="pcoded-hasmenu"><a href="javascript:void(0)"
                           class="waves-effect waves-dark"> <span class="pcoded-micon"><i
                                 class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
                              class="pcoded-mtext">게시판</span> <span class="pcoded-mcaret"></span>
                        </a>
                           <ul class="pcoded-submenu">
                              <li class=" "><a href="freeboard/FreeBoardList"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">게시판목록</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              
                     </ul>
                     </li>
                     </ul>
                       <!-- --------------------------------------------------------------------------------------------------- -->
                      <ul class="pcoded-item pcoded-left-item">
                        <li class="pcoded-hasmenu"><a href="javascript:void(0)"
                           class="waves-effect waves-dark"> <span class="pcoded-micon"><i
                                 class="ti-layout-grid2-alt"></i><b>BC</b></span> <span
                              class="pcoded-mtext">시스템관리</span> <span class="pcoded-mcaret"></span>
                        </a>
                           <ul class="pcoded-submenu">
                              <li class=" "><a href="breadcrumb.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">회사 관리</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="button.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">사원 관리</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=""><a href="accordion.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">코드 관리</span> <span
                                    class="pcoded-mcaret"></span>
                              </a></li>
                              <li class=" "><a href="tabs.html"
                                 class="waves-effect waves-dark"> <span
                                    class="pcoded-micon"><i class="ti-angle-right"></i></span> <span
                                    class="pcoded-mtext">게시판 관리</span> <span class="pcoded-mcaret"></span>
                              </a></li>
                     </ul>
                     </li>
                     </ul>
                  </div>
               </nav>
               <!-- Required Jquery -->

               </body>
            
               </html>