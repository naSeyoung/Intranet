<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script>
	//let searchOption = '${searchOption};
	//$("#searchOption").val(searchOption).prop("selected",true);
	$(function() {
		$(".dataRow").click(function() { //상세페이지 이동 
			var boardSeq = $(this).find('.boardSeq').text();
			location = "FreeBoardDetail?boardSeq=" + boardSeq + "";
		});
	});
	var a = document.getElementById('searchOption').options[document
			.getElementById('searchOption').selectedIndex].text;
	alert(a);
	$(document).ready(function() {
		$(".datepicker").datepicker({
			showButtonPanel : true,
			dateFormat : "yy-mm-dd",
			onClose : function(selectedDate) {
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

	function setSearchDate(start) {
		var num = start.substring(0, 1);
		var str = start.substring(1, 2);
		var today = new Date();
		var endDate = $.datepicker.formatDate('yy-mm-dd', today);
		$('#endDate').val(endDate);
		if (str == 'd') {
			today.setDate(today.getDate() - num);
		} else if (str == 'w') {
			today.setDate(today.getDate() - (num * 7));
		} else if (str == 'm') {
			today.setMonth(today.getMonth() - num);
			today.setDate(today.getDate() + 1);
		}
		var startDate = $.datepicker.formatDate('yy-mm-dd', today);
		$('#startDate').val(startDate);
		// 종료일은 시작일 이전 날짜 선택하지 못하도록 비활성화
		$("#endDate").datepicker("option", "minDate", startDate);
		// 시작일은 종료일 이후 날짜 선택하지 못하도록 비활성화
		$("#startDate").datepicker("option", "maxDate", endDate);
	}

	//DateClick
	jQuery.fn.dateclick = function() {
		var $obj = $(this);
		$obj.click(function() {
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

<form id="searchFrm" name="searchFrm" method="Get">
	<input type="hidden" id="cpage" name="cpage" value="${pageInfo.cpage}">
	<input type="hidden" id="cpDeptSeq" name="cpDeptSeq" value="">

	<div class="card">
		<div class="card-header">
			<h2>자유게시판</h2>
			<div class="card-header-right">
				<ul class="list-unstyled card-option">
					<li><i class="fa fa fa-wrench open-card-option"></i></li>
					<li><i class="fa fa-window-maximize full-card"></i></li>
					<li><i class="fa fa-minus minimize-card"></i></li>
					<li><i class="fa fa-refresh reload-card"></i></li>
					<li><i class="fa fa-trash close-card"></i></li>
				</ul>
			</div>
		</div>

		<div class="card-block table-border-style">
			<div class="fixed-box">

				<div class="select-box" style="float: left; height: 30px;">
					<span style="margin-left: 5%; margin-right: 3%;">일자 </span> <input
						class="datepicker" id="startDate" name="startDate"
						style="width: 34%;" readonly />
					<!-- color="transparent" text-shadow="0 0 0 black" -->
					<span>~</span> <input class="datepicker" id="endDate"
						name="endDate" style="width: 34%;" readonly />

				</div>
				<!-- color="transparent" text-shadow="0 0 0 black" -->
				<div class="select-box">
					<select name="type" id="searchOption"
						style="float: left; height: 30px;">
						<option value="all" ${freeBoard.type eq "all" ? "selected" : "" }>전체</option>
						<option value="sch_title"
							${freeBoard.type eq "sch_title" ? "selected" : "" }>제목</option>
						<option value="sch_id"
							${freeBoard.type eq "sch_id" ? "selected" : "" }>작성자</option>
						<option value="sch_regDate"
							${freeBoard.type eq "sch_regDate" ? "selected" : "" }>작성일자</option>
						<option value="sch_title"
							<c:if test="${type=='sch_title'}"> selected </c:if>>제목</option>
					</select> <input type="text" id="searchBoard" name="schWord"
						value="${param.schWord}"
						style="float: left; height: 30px; width: 35%; margin-left: 1%;" />
					<button class="main-btn01" type="submit" value="검색" id="searchBtn"
						style="margin-left: 1%;">검색</button>

					<button class="main-btn01" type="button" value="등록"
						style="margin-left: 1%; font-color: white;"
						onclick="location.href='FreeBoardReg'">등록</button>

				</div>
				<div class="card-block table-border-style">
					<div class="table-responsive" style="margin-top: 10px;">
						<table class="main-table02" id="tableAjax">
							<thead>
								<tr>
									<th scope="row" class="table-info" id="main-table02-num">번호</th>
									<th scope="row" class="table-info">제목</th>
									<th scope="row" class="table-info">작성자</th>
									<th scope="row" class="table-info">작성일자</th>
								</tr>
							<thead>
							<tbody>
								<c:forEach var="board" items="${list}" varStatus="status">
									<tr class="dataRow">
										<td class="boardSeq" id="main-table02-num">${board.boardSeq}</td>
										<td style="width: 60%;">${board.title}</td>
										<td>${board.userId}</td>
										<td>${board.regDt}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<div></div>
							</div></div></div>
					</div>
				</div>
				<input type="hidden" name="schWord" value="${param.schWord }" /> <input
					type="hidden" name="type" value="${param.type }" />
</form>
						<%-- 	<jsp:include page="/WEB-INF/views/common/cmm_page.jsp" flush="true"/> --%>


</html>