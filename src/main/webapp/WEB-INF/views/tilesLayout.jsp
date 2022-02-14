<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>
	<div id="siteTop">
		<tiles:insertAttribute name="siteTop" />
	</div>
	 <div id="body">
		<tiles:insertAttribute name="body"/>
		</div> 
	<div id="leftNav">
		<tiles:insertAttribute name="leftNav" />
	</div>
<<<<<<< HEAD
 --%>
=======
		<%-- <tiles:insertAttribute name="wavesCss" />
		<tiles:insertAttribute name="styleCss" />
		<tiles:insertAttribute name="scrollbarCss" /> --%>
	
>>>>>>> branch 'master' of https://github.com/naSeyoung/Intranet.git
</body>

</html>