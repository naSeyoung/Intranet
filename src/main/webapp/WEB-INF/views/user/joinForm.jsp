<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
function insertUser(){
	var formid = document.frm; 
	formid.action = "/joinProc";
	formid.submit();
}
</script>
<div class="card">
	<div class="card-header">
		<h2 style="text-align:center">회원가입</h2>
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
				<input type="hidden" id="cpInfoSeq" name="cpInfoSeq" value="1" readonly>
				<input type="hidden" id="noticeYn" name="noticeYn" value="N" readonly>
				<input type="hidden" id="delYn" name="delYn" value="N" readonly>
			
				<div class="card-block table-border-style">
					<div class="table-responsive" style="margin-top: 10px;">
					<table class="main-table02">
						<tbody>
<!-- 							<tr> -->
<!-- 								<th scope="row" class="table-info" id="main-table02-num">회사</th> -->
<!-- 							</tr> -->
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">아이디</th>
								<td><input type="text" id="userId" name="userId"></td>
								<c:if test="${not empty valid_userId}">
									<span id="valid">${valid_userId}</span>
								</c:if>
								<c:if test="${not empty error}">
									<span> 
										<p id="valid" class="alert alert-danger">${exception}</p> 
									</span>
								</c:if>
							</tr>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">비밀번호</th>
								<td><input type="password" id="userPw" name="userPw"></td>
							</tr>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">이름</th>
								<td><input type="text" id="userName" name="userName"></td>
							</tr>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">이메일</th>
								<td><input type="text" id="email" name="email"></td>
							</tr>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">전화번호</th>
								<td><input type="text" id="ctn" name="ctn"></td>
							</tr>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">부서</th>
								<td><input type="text" id="cpDeptSeq" name="cpDeptSeq"></td>
							</tr>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">직책</th>
								<td><input type="text" id="jobTitle" name="jobTitle"></td>
							</tr>
							<tr>
								<th scope="row" class="table-info" id="main-table02-num">직위</th>
								<td><input type="text" id="position" name="position"></td>
							</tr>
						</tbody>
					</table>
					</div>
				</div>
				
				<div class="tbl_btn_right">
					<button class ="main-btn01" type="button" value="저장"  onclick="insertUser()"> 회원가입</button>
				</div>
				
			</form>

		</div>
	</div>
</div>

<style>
.tbl_btn_right{
	float: right;
	margin-right: 20px;
}

.table-info{
	text-align: left;
}
</style>