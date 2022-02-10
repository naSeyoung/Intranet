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
		<H5>Insert테스트</H5>
		<form action = "/InsertSave" method="post" name="insert_form" id="insert_form">
		<table border="1">
			<tbody>
					<tr>
						<td>이름<input type="text" name="name" id="name" value=""></td>
						<td>코드<input type="text" name="code" id="code" value=""></td>
					</tr>
			</tbody>
		</table>
		<input type="button" value="저장" onclick="location.href='/InsertSave'">
		<input type="submit" id="submit" value="저장저장">
	</form>
	</div>
</body>
</html>