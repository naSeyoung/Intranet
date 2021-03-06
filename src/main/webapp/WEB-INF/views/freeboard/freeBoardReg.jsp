<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<form id="contentsForm" action="/FreeBoardRegFin" method="POST"  onsubmit="registerAction()" enctype="multipart/form-data">
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
										<div class="fixed-box">
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
				name="userId"
				style="width: 100%; border: 0;" /></td>
		</tr>
		<tr>
			<th scope="row" class="table-info"
				style="width: 10%;">날짜</th>
			<td><input type="date" id="first-reg-dt" name="regDt"
				style="width: 100%; border: 0;" readonly /></td>
		</tr>
		<tr>
			<th scope="row" class="table-info"
				style="width: 10%;">내용</th>
				<td><textarea id="editor" name="contents" rows=10
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
style="font-size: 15px; color: gray;">&nbsp;&nbsp; ※첨부파일은 최대 	5개까지 등록이 가능합니다.</span>

</div>
<div class="data_file_txt" id="data_file_txt" style="margin-top:2%; margin-bottom:3%;">

<div id="articlefileChange">
<table class="main-table02">
		 <thead>
		<tr>
			<th scope="row" class="table-info" >구분</th>
			<th scope="row" class="table-info" style="width:90%;">파일명</th>
			</tr>
		<thead>
		<tbody id="tb01">
		</tbody>
	</table>
	</div>
</div>

<div>
	<button class="main-btn01" type="submit"
		style="float: right;" value="검색" onclick="contentsSubmit">등록하기</button>
		</div>
	</div>
													</div>
												</div>
											</div>
							
					</form>
<script type="text/javascript" src="../resources/plugins/ckeditor/ckeditor.js"></script>
<script>
/*  function contentsSubmit(){
console.log("ㅇㅇㅇㅇㅇ");
alert("등록완료");
$.ajax({
url:"/FreeBoardRegFin",
method : "Post",
data : $("#contentsForm").serialize(),
dataType : "JSON", 
}).done(function(){
alert("글이 등록되었습니다. ");
}).fail(function(error){
alert(JSON.stringify(error));
});
}  */
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
    console.log("filesArr ----> " + filesArr);
    // 파일 개수 확인 및 제한
    if (fileCount + filesArr.length > totalCount) {
     alert('파일은 최대 '+totalCount+'개까지 업로드 할 수 있습니다.');
      return;
    } else {
    	 fileCount = fileCount + filesArr.length;
    }
     //각각의 파일 배열담기 및 기타
    filesArr.forEach(function (f) {
      var reader = new FileReader();
      reader.onload = function (e) {
        content_files.push(f);
        console.log("content_files.push(f) ---->" + content_files.push(f)); //왜 두개씩 ? 추가? 
        $('#tb01').append(
  /*       		
  '<tbody><tr><td class="main-table02-num" style="width:10%;">'
  +'<img src="../resources/static/img/del.png" onclick="fileDelete(\'file'+fileNum+'\')" style=" vertical-align: middle; cursor: pointer; "/>'
  +'<td font style="font-size:12px" >' + f.name + '</td></tr></tbody>'
   */
  '<tr><td class="main-table02-num" style="width:10%; text-align:center;"><div id="file' + fileNum + '" onclick="fileDelete(\'file' + fileNum + '\')">'
  +'<img src="resources/img/minus.png" style=" vertical-align: middle; cursor: pointer; "/>'
  +'<td font style="font-size:12px" >' + f.name + '</td></tr></tbody>'
		); 
        fileNum ++;
     };
     reader.readAsDataURL(f);
   });
  console.log("파일이름 : " + content_files );
  console.log("파일이름 : " + fileNum  );
  $("#input_file").val("");
  }

   
//파일 부분 삭제 함수
function fileDelete(fileNum){
 	console.log("fileDelete 누름");
	var no = fileNum.replace(/[^0-9]/g, "");
    console.log("no ---> " + no);
    content_files[no].is_delete = true;
	$('#'+fileNum).parent().parent().remove(); //1번쨰 시도 
	console.log('hehe');
	fileCount --;
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