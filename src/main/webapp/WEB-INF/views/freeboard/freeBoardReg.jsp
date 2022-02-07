<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="ko">

<head>
<title>이젠 인트라넷</title>
<!-- Meta -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


</head>


<body>
	<!-- Pre-loader start -->
<%-- <%
String navbarPage = "/WEB-INF/views/navbar.jsp";
String headerPage = "/WEB-INF/views/header.jsp";
%> --%>

<!-- Pre-loader end -->
<div id="pcoded" class="pcoded">
	<div class="pcoded-overlay-box"></div>
	<div class="pcoded-container navbar-wrapper">
		<!-- .navbar header-navbar pcoded-header
<!-- header 있는 자리  -->
<%-- <jsp:include page="<%=headerPage%>" /> --%>
<div class="pcoded-main-container">
	<div class="pcoded-wrapper">
		<!-- .pcoded-navbar 부분 -->
<%-- <jsp:include page="<%=navbarPage%>" /> --%>

<form method="POST">
	<div class="pcoded-content">
		<!-- 지우지말기 -->
<!-- Page-header end -->
<div class="pcoded-inner-content">
	<!-- Main-body start -->
<div class="main-body">
	<div class="page-wrapper">
		<!-- Page-body start -->
<div class="page-body">
	<div class="row">
		<div class="col-sm-12">
			<div class="card">
				<div class="card-header">
					<h2>게시글작성</h2>
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
					<div class="table-responsive">
						<table class="main-table01">
							<tbody>
								<tr>
									<th scope="row" class="table-info"
										style="width: 10%;">제목</th>
<td><input id="title" name="title"
	style="width: 100%; border: 0;" /></td>
</tr>
<tr>
	<th scope="row" class="table-info"
		style="width: 10%;">작성자</th>
<td><input id="first_reg_user"
	name="first_reg_user"
	style="width: 100%; border: 0;" /></td>
</tr>
<tr>
	<th scope="row" class="table-info"
		style="width: 10%;">날짜</th>
<td><input id="first-reg-dt" name="first-reg-dt"
	style="width: 100%; border: 0;" /></td>
</tr>
<tr>
	<th scope="row" class="table-info"
		style="width: 10%;">내용</th>
				<td><textarea id="editor" name="editor" rows=10
						name="contents"></textarea></td>
			</tr>
		</tbody>
	</table>
</div>

<div style="font-size: 20px; padding-bottom: 5px;">파일첨부</div>
															<div>
																<button class="main-btn01" type="button" value="검색">추가</button>
															</div>



														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
	CKEDITOR.replace("editor",{
		  filebrowserUploadUrl: '/Intranet/imageUpload.do'
		  /*  filebrowserBrowseUrl:  '/imageUpload2.do?type=Files'
 	     	    filebrowserImageBrowseUrl: '/freeboard/FreeBoardList?type=Files', 
	    filebrowserImageUploadUrl: '/imageUpload.do'         */ <!--이게 화면에 보이게 해주는듯 f12 이경로로 404뜸 -->
 	<!--'/imageUpload.do?type=Images',-->
	});
	console.log("upload");
/* CKEDITOR.on('dialogDefinition', function (ev) {
    var dialog = ev.data.definition.dialog;
    var dialogName = ev.data.name;
    var dialogDefinition = ev.data.definition;
    if (dialogName == 'image') {
        dialog.on('show', function (obj) {
            this.selectPage('Upload'); //업로드텝으로 시작
        });
        dialogDefinition.removeContents('advanced'); // 자세히탭 제거
        dialogDefinition.removeContents('Link'); // 링크탭 제거
    }
}); */
//window.parent.CKEDITOR.tools.callFunction(1,"${url}","전송완료");
//window.parent.CKEDITOR.tools.callFunction('" + funcNum + "', '" + url + "');

</script>

</html>