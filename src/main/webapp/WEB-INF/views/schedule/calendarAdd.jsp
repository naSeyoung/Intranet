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
                                          <h3>일정 등록</h3>
                                       </div>
                                       <!-- 표 추가  -->
                                       <div class="card-block table-border-style">
                                          <div class="table-responsive" style="margin-top: 10px;">
                                             <form action="/calendarAdded" method="post" name="cal_form" id="cal_form" enctype="multipart/form-data" target="repacatFrame">
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
                                                         	<option value="">전체</option>
                                                         	<c:forEach var="calTypeInfo" items="${scheTypeList }" varStatus="status">
                                                         		<option value="${calTypeInfo.mstSeq }">${calTypeInfo.mstName }</option>
                                                         	</c:forEach>
                                                         </select>
                                                      </td>
                                                      <th class="table-info"><span class="required">*</span>공개</th>
                                                      <td colspan="3">
                                                         <select id="calOpenYN"name="calOpenYN">
                                                               <option value="A">전체공개</option>
                                                               <option value="P">개인공개</option>
                                                         </select>
                                                      </td>
                                                   </tr>
                                                   <tr>
                                                      <th class="table-info"><span class="required">*</span>제목</th>
                                                      <td colspan="3">
                                                      <input type="text" autocomplete="off" name="calTitle" id="calTitle" placeholder="제목을 입력하세요" style="width: 50%"></td>
                                                   </tr>
                                                   <tr>
                                                      <th class="table-info"><span class="required"></span>장소</th>
                                                      <td colspan="3"><input type="text" autocomplete="off"
                                                         name="calPlace" id="calPlace"
                                                         placeholder="장소를 입력하세요" style="width: 50%"></td>
                                                   </tr>
                                                   <tr>
                                                      <th class="table-info"><span class="required">*</span>시작일</th>
                                                      <td>
                                                         <input type="text" autocomplete="off" id="calStartDate" name="calStartDate" value="" placeholder="날짜선택" style="width: 60%"> 
                                                         <input type="text" autocomplete="off" id="calStartTime" name="calStartTime" value="" placeholder="시간선택" required size="8" maxlength="5" style="margin-left: 3%;">
                                                      </td>
                                                      <th class="table-info"><span class="required">*</span>종료일</th>
                                                      <td>
                                                         <input type="text" autocomplete="off" id="calEndDate" name="calEndDate" value="" placeholder="날짜선택" style="width: 60%"> 
                                                         <input type="text" autocomplete="off" id="calEndTime" name="calEndTime" value="" placeholder="시간선택" required size="8" maxlength="5" style="margin-left: 3%;">
                                                      </td>
                                                   </tr>
                                                      <tr>
                                                         <th class="table-info" style="vertical-align: inherit;"><span class="required">*</span>내용</th>
                                                         <td colspan="3"><textarea autocomplete="off" cols="100" rows="10" name="calContents" id="calContents" style="font-size : 18px;" ></textarea></td>
                                                      </tr>
                                                   </tbody>
                                             </table>
                                       <div class="card-header">
                                          <h5>파일 첨부</h5>
                                          <br>
                                       </div>
                                       
<!--                                        <input type="button" id="btn-upload" class="main-btn01" value="추가" style="margin-left: 1%;"> -->
                                       	<button id="btn-upload" type="button" class="main-btn01" type="button" style="margin-left: 1%;">추가</button>
										<input id="input_file" multiple="multiple" type="file" style="display:none;">       
                                       <span style="font-size: 15px; color: gray;">&nbsp;&nbsp; ※첨부파일은 최대 5개까지 등록이 가능합니다.</span>
	

                                       <!-- 파일 표추가 -->
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
                                                </tbody>
                                                <tbody id="tb01">
                                                </tbody>
                                             </table>
                                             <div>
                                                <a href="/ezenCalendar"><input type="button"class="main-btn01" value="목록"style="float: right; margin-top: 3%; margin-left: 1%;"></a>
                                                <a href="/aTest"><input type="button"class="main-btn01" value="임시목록"style="float: right; margin-top: 3%; margin-left: 1%;"></a>
                                                <a href="javascript:submit_scheAdd(document.cal_form);"><input type="button"class="main-btn01" value="저장"style="float: right; margin-top: 3%; margin-left: 1%;"></a>
                                             </div>
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
   
   
//    $(document).ready(function(){

// 		$("#calStartTime, #calEndTime").timepicker('setTime', new Date());

// 	});
   
      $('#calStartDate, #calEndDate') //날짜선택
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
      
//       $("#calStartDate").datepicker('setDate','today');
//       $("#calEndDate").datepicker('setDate','today');

      $("#calStartTime, #calEndTime").timepicker({ //시간선택
    	  controlType : 'select',
         timeFormat : "HH:mm", //24시
      });
      
      $("#calStartDate, #calStartTime, #calEndDate, #calEndTime").prop('readonly',true);
//      var date 
//      var val = $("#cal_startDate").val();
//      alert(val);
     
      function submit_scheAdd(form) {
    	  
		if($("#calType").val() == "") {
		  	 alert("구분을 선택해 주세요.");
		  	 return false;
		   } else if($("#calTitle").val() == ""){
		     alert("제목을 입력해 주세요");
		     return false;
		  } else if($("#calStartDate").val() == "" || $("#calEndDate").val() == ""){
		     alert("날짜를 선택해 주세요.");
		     return false;
		  } else if($("#calStartDate").val() > $("#calEndDate").val()) {
		     alert("시작일이 종료일보다 큽니다.");
		     return false;
		  } else if($("#calStartDate").val() == $("#calEndDate").val() && $("#calStartTime").val() > $("#calEndTime").val()) {
		     alert("시간을 다시 선택해 주세요.")
		     return false;
		  } else if($("#calContents").val() == "") {
		     alert("내용을 입력해 주세요.")
		     return false;
		  } 
    	  
//     	     var calStDt = $("#calStartDate").val().replace(/-/gi,"").concat($("#calStartTime").val()); 
//     	     var calEdDt = $("#calEndDate").val().replace(/-/gi,"").concat($("#calEndTime").val()); 
    	     
//     	     if(calEdDt-calStDt < 0) {
//     	    	 alert('다시 ')
//     	     }
    	  	  
    	  form.action ="/calendarAdded";
    	  form.submit();
      };
      
      
      
      
 /* #############################################################################################  */
      $(document).ready(function(){
   //input file 파일 첨부시 fileCheck 함수 실행 
   $("#input_file").on("change",fileCheck);
});
$(function () {
    $('#btn-upload').click(function (e) {
        e.preventDefault();
        $('#input_file').click();
    });
});

//파일 현재 필드 숫자 totalCount랑 비교값 
var fileCount = 0;
//해당 숫자를 수정하여 전체 업로드 갯수를 정한다. 
var totalCount = 5;
//파일 고유넘버 
var fileNum = 0;
//첨부파일 배열 
var content_files = new Array();
function fileCheck(e) {
    var files = e.target.files;
    // 파일 배열 담기
    var filesArr = Array.prototype.slice.call(files);
    console.log("filesArr ----> " + filesArr);
    // 파일 개수 확인 및 제한
    if (fileCount + filesArr.length > totalCount) {
     alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
      return;
    } else {
        fileCount = fileCount + filesArr.length;
    }
     //각각의 파일 배열담기 및 기타
    filesArr.forEach(function (f) {
      var reader = new FileReader();
      reader.onload = function (e) {
        content_files.push(f);
        console.log("content_files.push(f) ---->" + content_files.push(f)); //왜 두개씩 ? 추가? 
        $('#tb01').append(
  /*             
  '<tbody><tr><td class="main-table02-num" style="width:10%;">'
  +'<img src="../resources/static/img/del.png" onclick="fileDelete(\'file'+fileNum+'\')" style=" vertical-align: middle; cursor: pointer; "/>'
  +'<td font style="font-size:12px" >' + f.name + '</td></tr></tbody>'
   */
  '<tr><td class="main-table02-num" style="width:10%;"><div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
  +'<img src="resources/img/minus.png" style=" vertical-align: middle; cursor: pointer; "/>'
  +'<td font style="font-size:12px" >' + f.name + '</td></tr></tbody>'
      ); 
        fileNum ++;
     };
     reader.readAsDataURL(f);
   });
  console.log("파일이름 : " + content_files );
  console.log("파일이름 : " + fileNum  );
  $("#input_file").val("");
  }

//파일 부분 삭제 함수
function fileDelete(fileNum){
    console.log("fileDelete 누름");
   var no = fileNum.replace(/[^0-9]/g, "");
    console.log("no ---> " + no);
    content_files[no].is_delete = true;
//      console.log("content_files[no] ---> "+content_files[no]);
//      console.log("content_files ---> "+content_files);
   $('#'+fileNum).parent().parent().remove(); //1번쨰 시도 
   console.log('hehe');
   //$('tbody').remove(); //다른 방법 시도 
//    console.log($('tbody td').eq(fileNum).remove());
   fileCount --;
//     console.log(content_files);
}

// 폼 submit 로직 ---> 여기서부터 맞게 수정해야함 삭제까진 돌아감 
   function registerAction(){
   var form = $("form")[0];        
    var formData = new FormData(form);
      for (var x = 0; x < content_files.length; x++) {
         // 삭제 안한것만 담아 준다. 
         if(!content_files[x].is_delete){
             formData.append("article_file", content_files[x]);
         }
      }
   //    파일업로드 multiple ajax처리
         $.ajax({
                  type: "POST",
                    enctype: "multipart/form-data",
                  url: "/file-upload",
                  data : formData,
                  processData: false,
                  contentType: false,
                  success: function (data) {
                   if(JSON.parse(data)['result'] == "OK"){
                      alert("파일업로드 성공");
               } else
                  alert("서버내 오류로 처리가 지연되고있습니다. 잠시 후 다시 시도해주세요");
                  },
                  error: function (xhr, status, error) {
                   alert("서버오류로 지연되고있습니다. 잠시 후 다시 시도해주시기 바랍니다.");
                 return false;
                  }
                });
                return false;
         }
document.getElementById("first-reg-dt").value = new Date().toISOString().substring(0, 10); 

CKEDITOR.replace("editor",{
    /*   filebrowserUploadUrl: '/Intranet/imageUpload.do'
     filebrowserBrowseUrl:  '/imageUpload2.do?type=Files'
           filebrowserImageBrowseUrl: '/freeboard/FreeBoardList?type=Files', 
  filebrowserImageUploadUrl: '/imageUpload.do'         */ <!--이게 화면에 보이게 해주는듯 f12 이경로로 404뜸 -->
<!--'/imageUpload.do?type=Images',-->
});
console.log("upload");
   CKEDITOR.on('dialogDefinition', function (ev) {
    var dialog = ev.data.definition.dialog;
    var dialogName = ev.data.name;
    var dialogDefinition = ev.data.definition;
    if (dialogName == 'image') {
        dialog.on('show', function (obj) {
            this.selectPage('Upload'); //업로드텝으로 시작 
        });
        dialogDefinition.removeContents('advanced'); // 자세히탭 제거
        dialogDefinition.removeContents('Link'); // 링크탭 제거
    }
});
//window.parent.CKEDITOR.tools.callFunction(1,"${url}","전송완료");

      
      
      
 

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