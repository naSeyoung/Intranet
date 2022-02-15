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
<title>이젠 인트라넷</title>

</head>
<body>
	<div id="pcoded" class="pcoded">
		<div class="pcoded-overlay-box"></div>
		<div class="pcoded-container navbar-wrapper">
		<div class="pcoded-main-container">
				<div class="pcoded-wrapper">
				<div class="pcoded-content">
				
				
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
															<h2>제목 불러오기(예정)</h2>
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
																			<td><input type="date" id="first-reg-dt"
																				style="width: 100%; border: 0;" readonly /></td>
																		</tr>
																		<tr>
																			<th scope="row" class="table-info"
																				style="width: 10%;">내용</th>
																			<td name="contents"></td>
																		</tr>
																	</tbody>																
																</table>
															<div>
															<div style="font-size: 15px; padding-bottom: 5px; margin-top:3%;">첨부된 파일</div>
															<div class="data_file_txt" id="data_file_txt"
																style="margin: 40px;">
																<div id="articlefileChange"></div>
															</div>
																<button class="main-btn01" type="submit"
																	style="float: right;" value="검색">등록하기</button>
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
				</div>
			</div>
		</div>
	</div>
</body>
<script>
document.getElementById("first-reg-dt").value = new Date().toISOString().substring(0, 10); 

</script>
</html>