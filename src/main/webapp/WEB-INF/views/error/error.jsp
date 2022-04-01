<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>     
	<div class="card">
		<div class="card-header">
			<h2>error</h2>
			<c:if test="${not empty code && code eq '403'}">
				<h4>권한이 없습니다.</h4>
			</c:if>
			<h4>관리자에게 문의하세요.</h4>
		</div>
	</div>
