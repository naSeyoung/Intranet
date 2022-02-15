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
<title>이젠 인트라넷</title>
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

					<form action="" method="POST" enctype="multipart/form-data">
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
																			<td><input type="date" id="first-reg-dt"
																				style="width: 100%; border: 0;" readonly /></td>
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
																<button id="btn-upload" type="button" class="main-btn01"
																	type="button" value="검색">추가</button>
																<input id="input_file" multiple="multiple" type="file"
																	style="display: none;" /> <span
																	style="font-size: 15px; color: gray;">※첨부파일은 최대
																	5개까지 등록이 가능합니다.</span>
															</div>
															<div class="data_file_txt" id="data_file_txt"
																style="margin: 40px;">
																<span>첨부 파일</span> <br />
																<div id="articlefileChange"></div>
															</div>
															<div>
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
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript"
	src="../resources/plugins/ckeditor/ckeditor.js"></script>
<script>
$(document).ready(function(){
	//input file 파일 첨부시 fileCheck 함수 실행 
	$("#input_file").on("change",fileCheck);
});
$(function () {
    $('#btn-upload').click(function (e) {
        e.preventDefault();
        $('#input_file').click();
    });
});
//파일 현재 필드 숫자 totalCount랑 비교값 
var fileCount = 0;
//해당 숫자를 수정하여 전체 업로드 갯수를 정한다. 
var totalCount = 5;
//파일 고유넘버 
var fileNum = 0;
//첨부파일 배열 
var content_files = new Array();
function fileCheck(e) {
    var files = e.target.files;
    // 파일 배열 담기
    var filesArr = Array.prototype.slice.call(files);
    // 파일 개수 확인 및 제한
    if (fileCount + filesArr.length > totalCount) {
      $.alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
      return;
    } else {
    	 fileCount = fileCount + filesArr.length;
    }
    // 각각의 파일 배열담기 및 기타
    filesArr.forEach(function (f) {
      var reader = new FileReader();
      reader.onload = function (e) {
        content_files.push(f);
        $('#articlefileChange').append(
       		'<div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
       		+ '<font style="font-size:12px">' + f.name + '</font>'  
       		+ '<img src="/img/icon_minus.png" style="width:20px; height:auto; vertical-align: middle; cursor: pointer;"/>' 
       		+ '<div/>'
		);
        fileNum ++;
      };
      reader.readAsDataURL(f);
    });
    console.log(content_files);
    //초기화 한다.
    $("#input_file").val("");
  }
//파일 부분 삭제 함수
function fileDelete(fileNum){
    var no = fileNum.replace(/[^0-9]/g, "");
    content_files[no].is_delete = true;
	$('#' + fileNum).remove();
	fileCount --;
    console.log(content_files);
}

// 폼 submit 로직 ---> 여기서부터 맞게 수정해야함 삭제까진 돌아감 
	function registerAction(){
	var form = $("form")[0];        
 	var formData = new FormData(form);
		for (var x = 0; x < content_files.length; x++) {
			// 삭제 안한것만 담아 준다. 
			if(!content_files[x].is_delete){
				 formData.append("article_file", content_files[x]);
			}
		}
	//	 파일업로드 multiple ajax처리
			$.ajax({
		   	      type: "POST",
		   	   	  enctype: "multipart/form-data",
		   	      url: "/file-upload",
		       	  data : formData,
		       	  processData: false,
		   	      contentType: false,
		   	      success: function (data) {
		   	    	if(JSON.parse(data)['result'] == "OK"){
		   	    		alert("파일업로드 성공");
					} else
						alert("서버내 오류로 처리가 지연되고있습니다. 잠시 후 다시 시도해주세요");
		   	      },
		   	      error: function (xhr, status, error) {
		   	    	alert("서버오류로 지연되고있습니다. 잠시 후 다시 시도해주시기 바랍니다.");
		   	     return false;
		   	      }
		   	    });
		   	    return false;
			}
document.getElementById("first-reg-dt").value = new Date().toISOString().substring(0, 10); 

CKEDITOR.replace("editor",{
	 /*   filebrowserUploadUrl: '/Intranet/imageUpload.do'
	  filebrowserBrowseUrl:  '/imageUpload2.do?type=Files'
    	    filebrowserImageBrowseUrl: '/freeboard/FreeBoardList?type=Files', 
  filebrowserImageUploadUrl: '/imageUpload.do'         */ <!--이게 화면에 보이게 해주는듯 f12 이경로로 404뜸 -->
<!--'/imageUpload.do?type=Images',-->
});
console.log("upload");
	console.log("upload");
	CKEDITOR.on('dialogDefinition', function (ev) {
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
});
//window.parent.CKEDITOR.tools.callFunction(1,"${url}","전송완료");

</script>

</html>