<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
</head>
<body>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>  

	<c:if test="${not empty params}">
		<form name="dataForm" style="display: none;" action="${redirectUri}" method="${method}">
			<c:forEach var="notice" items="${params.keySet()}" varStatus="status">
				<input type="hidden" name="${key}" value="${params.get(key)}"/>
			</c:forEach>
		</form>
	</c:if>

	<script  type="text/javascript">

		window.onload = function() {
			var message = "${message}";
			if(message != "" && message != null){
				alert(message);
			}

			var params = "${params}";
			if(params != "" && params != null){
				document.dataForm.submit();
			} else {
				var redirectUri = "${redirectUri}";
				location.href = redirectUri;
			}
		}

	</script>

</body>
</html>