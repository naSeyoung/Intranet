<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" type="text/css" href="/css/common/cmm_page.css">

<div class="page_block">
	<table class="tbl_page_box">
 		<tr>
			<td height="51" align="center">
				<div class="bord_page">
					<table class="tbl_page">
						<tr>
							<td height="34" align="center" valign="middle">
							<fmt:parseNumber var="pages" integerOnly="true" value="${(pageInfo.cpage - 1) / 10}" />
							<fmt:parseNumber var="pageM" integerOnly="true" value="${(pageInfo.pagecount - 1) / 10}" />
							<c:set var="startpage" value="${(pages) * 10 + 1 }" />
							<c:set var="endpage" value="${(pageM == pages) ? pageInfo.pagecount : (pages) * 10 + 10}"/>
							<c:if test="${1 != pageInfo.cpage}">
								<a href="javascript:gotoPage(1);">
									[<<]<img src="<c:url value=''/>" width="16" height="13"/>
								</a>
								<a href="javascript:gotoPage(${pageInfo.cpage - 1});">
									[<]<img src="<c:url value=''/>" width="13" height="13"/>
								</a>
							</c:if>
							<strong>
								<c:forEach begin="${startpage }" end="${pageInfo.cpage - 1}" varStatus="status">
									<a href="javascript:gotoPage(${status.current});"><c:out value="${status.current}"/></a>
								</c:forEach>
							</strong>
							<span><c:out value="${pageInfo.cpage}"/></span>
							<strong>
								<c:forEach begin="${pageInfo.cpage + 1}" end="${endpage}" varStatus="status">
									<a href="javascript:gotoPage(${status.current});"><c:out value="${status.current}"/></a>
								</c:forEach>
							</strong>
							<c:if test="${pageInfo.pagecount != pageInfo.cpage }">
								<a href="javascript:gotoPage(${pageInfo.cpage + 1});">
									[>]<img src="<c:url value=''/>" width="16" height="13"/>
								</a>
								<a href="javascript:gotoPage(${pageInfo.pagecount});">
									[>>]<img src="<c:url value=''/>" width="16" height="13"/>
								</a>
							</c:if>
							</td>
						</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</div>