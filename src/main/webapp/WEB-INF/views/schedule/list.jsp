<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<H5>DB 연동 확인^</H5>

		<table border="1">
			<tbody>
				<c:if test="${empty list }">
					<tr>
						<td class="first" colspan="2">등록된 글이 없습니다.</td>
					</tr>
				</c:if>
				<c:forEach var="vo" items="${list }" varStatus="status">
					<tr>
						<td>${vo.USERNAME }</td>
						<td>${vo.USERCODE }</td>
						<td>${vo.HIDAY }</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="button" value="등록" onclick="location.href='/Insert'">

	</div>
</body>
</html>