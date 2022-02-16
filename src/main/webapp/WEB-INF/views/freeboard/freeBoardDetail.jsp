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
																		<th scope="row" class="table-info" style="width: 10%;">제목</th>
																		<td><input id="title" name="title"
																			style="width: 100%; border: 0;" /></td>
																	</tr>
																	<tr>
																		<th scope="row" class="table-info" style="width: 10%;">작성자</th>
																		<td><input id="first_reg_user"
																			name="first_reg_user" style="width: 100%; border: 0;" /></td>
																	</tr>
																	<tr>
																		<th scope="row" class="table-info" style="width: 10%;">날짜</th>
																		<td><input type="date" id="first-reg-dt"
																			style="width: 100%; border: 0;" readonly /></td>
																	</tr>
																	<tr>
																		<th scope="row" class="table-info" style="width: 10%;">내용</th>
																		<td name="contents"></td>
																	</tr>
																</tbody>
															</table>
															<div>
																<div
																	style="font-size: 15px; padding-bottom: 5px; margin-top: 3%;">첨부된
																	파일</div>
																<div class="data_file_txt" id="data_file_txt"
																	style="margin: 40px;">
																	<div id="articlefileChange"></div>
																</div>

															</div>

															<hr>
															<div>
																<span>댓글</span><br />
																<br />
															</div>
															<div>
																<textarea placeholder=" 200자 제한입니다." id="commentBox"
																	style="width: 80%; resize: none;"
																	onkeyup="adjustHeight();"></textarea>
																<button class="main-btn01" type="submit"
																	style="float: right;" value="검색">등록하기</button>
															</div><br/><br/>
															<div>
																<table class="main-table02">
																	<thead>
																		<tr>
																			<th scope="row" class="table-info">부서/이름</th>
																			<th scope="row" class="table-info">댓글</th>
																		</tr>
																	<thead>
																	<tbody>
																		<tr>
																			<td id="main-table02-num">1</td>
																			<td style="width: 60%;">mark</td>
																		</tr>
																	</tbody>
																</table>

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







	document.getElementById("first-reg-dt").value = new Date().toISOString()
			.substring(0, 10); //현재 날짜 
	function adjustHeight(commentBox) { // commentBox 세로줄 자동 조절
		var textEle = $('textarea');
		textEle[0].style.height = 'auto';
		var textEleHeight = textEle.prop('scrollHeight');
		textEle.css('height', textEleHeight);
	};
	var textEle = $('textarea');
	textEle.on('keyup', function() {
		adjustHeight();
	});
	$('#commentBox').keyup(function(e) {
		let content = $(this).val();
		//글자수 세기 
		if (content.length == 0 || content == '') {
			$('textarea').text('0자');
		} else {
			$('textarea').text(content.length + '자');
		}
		//글자수 제한 
		if (content.length > 200) {
			// 200자 부터는 타이핑 되지 않도록
			$(this).val($(this).val().substring(0, 200));
			// 200자 넘으면 알림창 뜨도록 
			alert('글자수는 200자까지 입력 가능합니다.');
		}
	})
</script>
</html>