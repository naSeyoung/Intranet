<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html >
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
   
<style>

.required {
	color : #ff3600;
}
</style>
</head>
<!-- fullcalendar js  -->
<script type="text/javascript"
   src="/resources/js/fullcalendar/fullcalendar.js"></script>
<script type="text/javascript"
   src="/resources/js/fullcalendar/theme-chooser.js"></script>

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
                                          <h3>일정 상세</h3>
                                       </div>
                                       <!-- 표 추가  -->
                                       <div class="card-block table-border-style">
                                          <div class="table-responsive" style="margin-top: 10px;">
                                             <form action="" method="post" name="cal_form" id="cal_form" enctype="multipart/form-data" target="repacatFrame">
                                             <input type="hidden" id="st" name="st" value="${scheInfo.startDt }"style="width: 60%"> 
                                               <input type="hidden" id="et" name="et" value="${scheInfo.endDt }"style="width: 60%"> 
                                             <table class="main-table02">
                                             	<colgroup>
                                             	<col width="15%">
                                             	<col width="35%">
                                             	<col width="15%">
                                             	<col width="35%">
                                             	</colgroup>
                                                <tbody>
                                                   <tr>
                                                      <th class="table-info"><span class="required">*</span>구분</th>
                                                      <td>
                                                         <select id="calType" name="calType">
                                                         	<option value="">${scheInfo.mstName }</option>
                                                         	<c:forEach var="calTypeInfo" items="${scheTypeList }" varStatus="status">
                                                         		<option value="${calTypeInfo.mstSeq }">${calTypeInfo.mstName }</option>
                                                         	</c:forEach>
                                                         </select>
                                                      </td>
                                                      <th class="table-info"><span class="required">*</span>공개</th>
                                                      <td colspan="3">
                                                         <select id="calOpenYN"name="calOpenYN">
                                                               <option value="">${scheInfo.scheType}</option>
                                                         </select>
                                                      </td>
                                                   </tr>
                                                   <tr>
                                                      <th class="table-info"><span class="required">*</span>제목</th>
                                                      <td colspan="3">
                                                      <input type="text" autocomplete="off" name="calTitle" id="calTitle" value="${scheInfo.title}" style="width: 50%"></td>
                                                   </tr>
                                                   <tr>
                                                      <th class="table-info"><span class="required"></span>장소</th>
                                                      <td colspan="3"><input type="text" autocomplete="off" name="calPlace" id="calPlace" value="${scheInfo.place}" style="width: 50%"></td>
                                                   </tr>
                                                   <tr>
                                                      <th class="table-info"><span class="required">*</span>시작일</th>
                                                      <td>
                                                         <input type="text" autocomplete="off" id="calStartDate" name="calStartDate" value="${scheInfo.startDt }"style="width: 60%"> 
                                                         <input type="text" autocomplete="off" id="calStartTime" name="calStartTime" value="${scheInfo.startDt }" required size="8" maxlength="5" style="margin-left: 3%;">
                                                      </td>
                                                      <th class="table-info"><span class="required">*</span>종료일</th>
                                                      <td>
                                                         <input type="text" autocomplete="off" id="calEndDate" name="calEndDate" value="" placeholder="날짜선택" style="width: 60%"> 
                                                         <input type="text" autocomplete="off" id="calEndTime" name="calEndTime" value="" placeholder="시간선택" required size="8" maxlength="5" style="margin-left: 3%;">
                                                      </td>
                                                   </tr>
                                                      <tr>
                                                         <th class="table-info" style="vertical-align: inherit;"><span class="required">*</span>내용</th>
                                                         <td colspan="3"><textarea autocomplete="off" cols="100" rows="10" name="calContents" id="calContents" style="font-size : 18px;" ><c:out value = "${scheInfo.contents }"></c:out></textarea></td>
                                                      </tr>
                                                   </tbody>
                                             </table>
                                       <div class="card-header">
                                          <h5>파일 첨부</h5>
                                          <br>
                                       </div>

                                       
                                       <input type="button" class="main-btn01" value="추가" style="margin-left: 1%;"onclick=document.all.cal_file.click();>
										<input type="file" name="calFile" id="calFile" style="display: none;"/>       

                                       <!-- 파일 표추가 -->
                                       <h1>to do</h1>
                                             <table class="main-table02" style="margin-top: 3%;">
                                             	<colgroup>
                                             	<col width="10%">
                                             	<col width="90%">
                                             	</colgroup>
                                                <tbody>
                                                   <tr>
                                                      <th class="table-info"></th>
                                                      <th class="table-info" style="width: 90%;">파일명</th>
                                                   </tr>
                                                   <tr>
                                                      <td style="text-align: center;"><a href="javascript:fileDel();">[X]</a></td>
                                                      <td style="width: 90%;"></td>
                                                   </tr>
                                                   <tr>
                                                      <td style="text-align: center;"><a href="javascript:fileDel();">[X]</a></td>
                                                      <td style="width: 90%;"></td>
                                                   </tr>
                                                </tbody>
                                             </table>
                                             </form>
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
   <script src="resources/js/fullcalendar/jquery-ui-timepicker-addon.js"></script>


   <script>
/*       $('#calStartDate, #calEndDate') //날짜선택
      .datepicker(
            {
               dateFormat : "yy-mm-dd",
               changeMonth : true,
               changeYear : true,
               monthNamesShort : [ '1월', '2월', '3월', '4월', '5월', '6월',
                     '7월', '8월', '9월', '10월', '11월', '12월' ],
               dayNamesMin : [ '일', '월', '화', '수', '목', '금', '토' ],
               weekHeader : 'Wk',
               changeMonth : true, // 월변경가능
               changeYear : true, // 년변경가능
               yearRange : '2022:+10', // 연도 셀렉트 박스 범위
               showMonthAfterYear : true, // 년 뒤에 월 표시
               buttonText : '날짜를 선택하세요',
               autoSize : false, // 오토리사이즈(body등 상위태그의 설정에 따른다)
               showOn : "focus", // 엘리먼트와 이미지 동시 사용
            });
      
      $("#calStartDate").datepicker('setDate','today');
      $("#calEndDate").datepicker('setDate','today');

      $("#calStartTime, #calEndTime").timepicker({ //시간선택
         controlType : 'select',
         timeFormat : "HH:mm" //24시
      }); */
      

      // 상세페이지니까 readonly로 막음
      $("#calTitle, #calPlace, #calType, #calStartDate, #calStartTime, #calEndDate, #calEndTime, #calContents").prop('readonly', true);
		 
      var st = $("#st").val();
      var et = $("#et").val();

      var esStartDate = st.substr(0,10);
      var esStartTime = st.substr(11,5);
      var esEndDate = et.substr(0,10);
      var esEndTime = et.substr(11,5);
      
      $(document).ready(function() {
    	  $('#calStartDate').val(esStartDate);
    	  $('#calStartTime').val(esStartTime);
    	  $('#calEndDate').val(esEndDate);
    	  $('#calEndTime').val(esEndTime);
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