<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
function loginProc(){
	var frm = document.frm;

	if(frm.userId.value == "" || frm.userId.value == null){
		alert("아이디를 입력해주세요.");
		frm.userId.focus();
		return false;
	}else if(frm.userPw.value == "" || frm.userPw.value == null){
		alert("비밀번호를 입력해주세요.");
		frm.userPw.focus();
		return false;
	}
	
 	document.frm.action = "/loginProc";
	document.frm.submit();
}
 
function goJoin(){
	var formid = document.frm;
	formid.method = "get";
	formid.action = "/join";
	formid.submit();
}
</script>
<div class="card">
	<div class="card-header">
		<h2 style="text-align:center">로그인</h2>
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
						<div class="login-block">
							<input type="text" id="userId" name="userId" onKeydown="if(event.keyCode == 13){loginProc();}" placeholder="아이디"/><br/>
							<input type="password" id="userPw" name="userPw" onKeydown="if(event.keyCode == 13){loginProc();}" placeholder="비밀번호"/><br/>
							<span> 
								<c:if test="${not empty error}">
									<p id="valid" class="alert alert-danger">${exception}</p> 
								</c:if>
							</span>
							<button class ="main-btn01" type="button" value="저장"  onclick="loginProc()"> 로그인</button>
							<button class ="main-btn01" type="button" value="저장"  onclick="goJoin()"> 회원가입</button>
						</div>
					</div>
				</div>
				
			</form>

		</div>
	</div>
</div>

<style>
.login-block {
	text-align: center;
}

.login-block > input {
	margin:3px;
}

.login-block > button {
	margin:3px;
}
</style>


