<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
.a_btn{
	border : 1px solid;
	padding : 2px;
}
</style>
<script>
function goUpdate(){
	chkIns();
	
	var formid = document.frm;
	formid.action = "/system/department/updateDept"
	formid.submit();
}

function chkIns(){
	if($("#cpDeptName").val == "" || $("#cpDeptName").val == null){
		alert("부서명을 입력해주세요.");
		return false;
	}
}

var rowIndex = 0;
function addRow(){
	var innerStr = "";
	
	innerStr += "<tr>";
	innerStr += "	<td>";
	innerStr += "		<a onclick='delRow(this)'>x</a>";
	innerStr += "		<input type='text' id='index_"+rowIndex+"' name='index' value='"+rowIndex+"'/>";
	innerStr += "	</td>";
	innerStr += "	<td><input type='text' id='cpDeptName_" +rowIndex+ "' name='cpDeptName'></td>";
	innerStr += "</tr>";
	
	$(innerStr).appendTo("#lineRow");
	setOrderNum();
	rowIndex++;
}
/* 
var subRowIndex = 0;
function addSubRow(row){
	var innerStr = "";
	
	innerStr += "	<tr>";
	innerStr += "		<td style='background-color:#dcdcdc'>";
	innerStr += "		</td>";
	innerStr += "		<td>";
	innerStr += "			<a onclick='delRow(this)'>x</a>";
	innerStr += "			<input type='hidden' id='index_"+subRowIndex+"' name='index' value='"+subRowIndex+"'/>";
	innerStr += "			<input type='hidden' id='cpDeptOrderRank_"+subRowIndex+"' name='cpDeptOrderRank' class='cpDeptOrderRank' value='"+subRowIndex+"'/>";
	innerStr += "			<input type='text' id='cpDeptParentSeq"+subRowIndex+"' name='cpDeptParentSeq'  value='"+$(row)+"'/>";
	innerStr += "		</td>";
	innerStr += "		<td>";
// 	innerStr += "			<span class='sp_sn' id='sp_sn_"+subRowIndex+"'></span>";
	innerStr += "			<a class='h_btn' onclick='setOrderUp(this)'>⬆</a>";
	innerStr += "			<a class='l_btn' onclick='setOrderDown(this)'>⬇</a>";
	innerStr += "		</td>";
	innerStr += "		<td><input type='text' id='cpDeptName_" +subRowIndex+ "' name='cpDeptName'></td>";
	innerStr += "	</tr>";
	
	var $tr = $(row).parent().parent();
	$tr.after($(innerStr));
// 	$(row).parent().parent().next().after($(innerStr))
// 	setOrderNum();
	subRowIndex++;
}
  */
// 위로올리기
function setOrderUp(el){
	var $tr = $(el).parent().parent();
	$tr.prev().before($tr);
	setOrderNum();
	
}

//아래로 내리기
function setOrderDown(el){
	var $tr = $(el).parent().parent();
	$tr.next().after($tr);
	setOrderNum();
	
}

// 순서 번호 매기기
function setOrderNum(){
	var ln = document.getElementsByName("index").length;
	for(var i=0; i<ln; i++){
		$(".sp_sn").eq(i).text(i+1);
		$(".cpDeptOrderRank").eq(i).val(i+1);
	}
}

function delRow(obj){
	var tr = $(obj).parent().parent();
	tr.remove();
	setOrderNum();
}
</script>
<div class="card">
	<div class="card-header">
		<h2>부서 수정</h2>
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
		<div class="fixed-box" >
			<form id="frm" name="frm" method="post">
			
				<div class="card-block table-border-style">
					<div class="table-responsive" style="margin-top: 10px;">
						<table class="main-table02">
							<thead>
								<tr>
									<th scope="row" class="table-info">부서명</th>
								</tr>
							<thead>
							<tbody>
								<tr class="dataRow">
									<td style="width: 60%;">
										<input type="hidden" id="cpDeptOrderRank" name="cpDeptOrderRank" value="${deptInfo.cpDeptOrderRank}"/> 
										<input type="hidden" id="cpDeptParentSeq" name="cpDeptParentSeq" value="${deptInfo.cpDeptParentSeq}"/> 
										<input type="hidden" id="cpDeptSeq" name="cpDeptSeq" value="${deptInfo.cpDeptSeq}"/> 
		 								<input type="text" id="cpDeptName" name="cpDeptName" style="width:90%" value="${deptInfo.cpDeptName}">
		 							</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				
				<div class="tbl_btn_right">
					<button class ="main-btn01" type="button" value="저장"  onclick="goUpdate()"> 저장</button>
				</div>
				
			</form>

		</div>
	</div>
</div>

