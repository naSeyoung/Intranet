<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
table{
	border : 1px solid;
}
</style>
<div>
	<form id="frm" name="frm" method="POST">
		<input type="hidden" id="cpInfoSeq" name="cpInfoSeq" value="${companyInfo.cpInfoSeq }"/>
		
		<div>
			<table>
				<tr>
					<td>회사명</td>
					<td><c:out value="${companyInfo.cpName}"/></td>
				</tr>
				<tr>
					<td>회사로고</td>
					<td></td>
					
				</tr>
				<tr>
					<td>전화번호</td>
					<td></td>
				</tr>
				<tr>
					<td>주소</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
	</form>
</div>
</body>
</html>