<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

var rowIndex = 0;
function addRow(){
	var innerStr = "";
	
	innerStr += "<tr>";
	innerStr += "	<td><a onclick='delRow(this)'>x</a></td>";
	innerStr += "	<td><input type='text' id='cpName_"+rowIndex+"' name='cpName'></td>";
	innerStr += "</tr>";
	$(innerStr).appendTo("#lineRow");
}

function delRow(obj){
	var tr = $(obj).parent().parent();
	tr.remove();
}

function insertGo(){
	var formid = document.frm;
	formid.method= "GET";
	formid.action = "/system/department/deptInsertForm"
	formid.submit();
}

function gotoPage(cpage){
	var formid = document.frm;
	formid.cpage.value = cpage;
	formid.method = "get";
	formid.action = "/system/department/deptList";
	formid.submit();
}

function viewGo(key){
	var formid = document.frm;
	formid.cpage.value = cpage;
	formid.cpDeptSeq.value = key;
	formid.method = "get";
	formid.action = "/system/department/deptInfo";
	formid.submit();
}

function submitSearch(){
	var formid = document.frm;
	formid.cpage.value = 1;
	formid.action = "/system/department/deptList";
	formid.submit();
}

</script>

<form id="frm" name="frm" method="post">
	<input type="hidden" id="cpage" name="cpage" value="${pageInfo.cpage}">
	<input type="hidden" id="cpDeptSeq" name="cpDeptSeq" value="">
	
	<div class="card">
		<div class="card-header">
			<h2>부서 목록</h2>
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
			<div class="fixed-box" >
				
				<div class="tbl_top_left">
					<ul>
						<li>
							<span>일자 </span>
							<input class="datepicker" id="startDate" name="startDate"  readonly />
							~ <input class="datepicker" id="endDate" name="endDate" readonly />
						</li>
						<li>
							<select id="searchType" name="searchType">
								<option value="1" selected="selected">전체</option>
								<option value="2">부서명</option>
							</select>
						</li>
						<li>
							<input id="searchWord" name="searchWord">
						</li>
						<li>
							<button class ="main-btn01" type="button" value="검색">검색</button>
						</li>
						<li>
							<button class ="main-btn01" type="button" value="등록" onclick="insertGo();">등록</button>
						</li>
					</ul>
				</div>
				
				
				
				<div class="card-block table-border-style">
					<div class="table-responsive" style="margin-top: 10px;">
					<table class="main-table02">
						<thead>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">번호</th>
								<th scope="row" class="table-info">부서</th>
							</tr>
						<thead>
						<tbody>
							<c:forEach var="list" items="${list}" varStatus="status">
								<tr onclick="viewGo('${list.cpDeptSeq}')" style="cursor: pointer;">
									<td id="main-table02-num">
										<c:out value="${((pageInfo.cpage - 1) * pageInfo.pagesize) + status.count}"/>
									</td>
									<td style="width:95%">${list.cpDeptName}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</div>
				</div>
				
				<jsp:include page="/WEB-INF/views/common/cmm_page.jsp" flush="true"/>
			</div>
		</div>
	</div>
</form>


<style>
.tbl_top_left {
	float: left;
	height: 30px;
}

.tbl_top_left ul li{
	list-style-type: none;
	float: left;
	margin-left: 20px;
}

.tbl_top_left > span{
	margin-left:3%; 
	margin-right:3%;
}

.fixed-box .tbl_btn_right{
	padding:20px;
	float: right;
}

.tbl_btn_right .main-btn01{
	margin-left:1%;
	font-color:white;
}

.select-box .search-category{
	float: left;
	height: 30px;
}

.select-box > #searchBoard{
	height: 30px;
	width:35%;
	margin-left:1%;
}



</style>