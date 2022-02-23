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
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

</head>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<body>
	<!-- Pre-loader start -->
<!-- Pre-loader end -->
<div id="pcoded" class="pcoded">
	<div class="pcoded-overlay-box"></div>
	<div class="pcoded-container navbar-wrapper">
		<!-- .navbar header-navbar pcoded-header header 있는 자리  -->
<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<!-- .pcoded-navbar 부분 -->
<form method="POST">
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
<!-- ----------------------datepicker----------------------------------------------- -->
<div class="fixed-box" >
	<form id="searchFrm" name="searchFrm" method="post">
	
	<div class="select-box" style="float:left;  height:30px;">
	<span style="margin-left:5%; margin-right:3%;">일자  </span>
<input class="datepicker" id="startDate" name="startDate" style="width:34%;"readonly />
<!-- color="transparent" text-shadow="0 0 0 black" -->
	<span>~</span>
		<input class="datepicker" id="endDate" name="endDate" style="width:34%;" readonly />
		
</div>
		<!-- color="transparent" text-shadow="0 0 0 black" -->
<div class="select-box">
<select name="search-category"  style="float:left; height:30px; ">
<option value="" selected="selected">전체</option>
<option value="">제목</option>
<option value="">작성자</option>
<option value="">작성일자</option>
</select>
<input id="searchBoard" style="float:left; height:30px; width:35%; margin-left:1%;"/>
<button class ="main-btn01" type="button" value="검색" style="margin-left:1%;">검색</button>
<button class ="main-btn01" type="button" value="등록" style="margin-left:1%; font-color:white;" onclick="location.href='FreeBoardReg'"> 등록</button>
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
	<c:forEach var="board" items="${list}" varStatus="status">
		<tr>
			<td id="main-table02-num">${board.boardSeq}</td>
			<td style="width: 60%;">${board.title}</td>
						<td>${board.userId}</td>
						<td>${board.regDt}</td>
					</tr>
	</c:forEach>
				</tbody>
			</table>
			<div>

			</div>
		</div>
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
</form>
</div>
		</div>
	</div>
</div>
</body>
<script>
$(document).ready(function() {
	$(".datepicker").datepicker({
		showButtonPanel: true,
		dateFormat: "yy-mm-dd",
		onClose: function(selectedDate) {
		/* 	var eleId = $(this).attr("id");
			var optionName = "";

            if(eleId.indexOf("StartDate") > 0) {
                eleId = eleId.replace("StartDate", "EndDate");
                optionName = "minDate";
            } else {
                eleId = eleId.replace("EndDate", "StartDate");
                optionName = "maxDate";
            }
            $("#"+eleId).datepicker( "option", optionName, selectedDate ); */
		}
	});
	$(".dateclick").dateclick();
});
function setSearchDate(start){
    var num = start.substring(0,1);
    var str = start.substring(1,2);
    var today = new Date();
    var endDate = $.datepicker.formatDate('yy-mm-dd', today);
    $('#endDate').val(endDate);
    if(str == 'd'){
        today.setDate(today.getDate() - num);
    }else if (str == 'w'){
        today.setDate(today.getDate() - (num*7));
    }else if (str == 'm'){
        today.setMonth(today.getMonth() - num);
        today.setDate(today.getDate() + 1);
    }
    var startDate = $.datepicker.formatDate('yy-mm-dd', today);
    $('#startDate').val(startDate);
    // 종료일은 시작일 이전 날짜 선택하지 못하도록 비활성화
    $("#endDate").datepicker( "option", "minDate", startDate );
    // 시작일은 종료일 이후 날짜 선택하지 못하도록 비활성화
    $("#startDate").datepicker( "option", "maxDate", endDate );
}

//DateClick
jQuery.fn.dateclick = function(){
    var $obj = $(this);
    $obj.click(function(){
        $(this).parent().find("input").focus();
    });
}

//페이지 이동 or 검색
/* function fnSearch(page) {
	$("#currentPage").val(page);
	$("#searchForm").attr("action", "/order/orderStatus/page");
	$("#searchForm").submit();
} */



</script>


</html>