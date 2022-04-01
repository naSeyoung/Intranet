<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>

function goJoin(){
	var formid = document.frm;
	formid.method = "get";
	formid.action = "/join";
	formid.submit();
}

function submitSearch(){
	var formid = document.frm;
	formid.cpage.value = 1;
	formid.action = "/system/user/userList";
	formid.submit();
}

function gotoPage(cpage){
	var formid = document.frm;
	formid.cpage.value = cpage;
	formid.method = "get";
	formid.action = "/system/user/userList";
	formid.submit();
}
</script>
	<form id="frm" name="frm" method="post" action="">
		<div>
			<input type="hidden" id="cpage" name="cpage" value="${pageInfo.cpage}"/>
			
			<div>
				<a href="javascript:goJoin()">아이디 등록</a>
			</div>
			
			<div>
				<table>
					<tr>
						<td>
							<select id="searchType" name="searchType" >
								<option value="1">전체</option>
								<option value="2">아이디</option>
								<option value="3">이름</option>
							</select>
						</td>
						<td>
							<input type="text" id="searchWord" name="searchWord" onKeydown="if(event.keyCode == 13){searchList()}">
						</td>
						<td>
							<a href="javascript:submitSearch()">검색</a>
						</td>
					</tr>
				</table>
			</div>
			
			
			<table style="border:1px solid;">
				<thead>
					<tr>
						<td>번호</td>
						<td>아이디</td>
						<td>이름</td>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="userList" items="${list}" varStatus="i">
						<tr>
							<td></td>
							<td><c:out value="${userList.userId}"/></td>
							<td>${userList.userName}</td>
							<td></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
		 	<jsp:include page="/WEB-INF/views/common/cmm_page.jsp" flush="true"/> 
		</div>
	</form>
</body>
</html>