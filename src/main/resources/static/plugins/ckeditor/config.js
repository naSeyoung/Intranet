/**
 * @license Copyright (c) 2003-2021, CKSource - Frederico Knabben. All rights reserved.
/**
 * @license Copyright (c) 2003-2021, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function( config ) {
	/* Define changes to default configuration here. For example:*/
	config.language = 'ko'; // 언어는 한글
	/*// config.uiColor = '#AADC6E';  배경색*/
	config.enterMode = '2' ,// 엔터모드는 <br/>
	config.toolbarCanCollapse = true; // 에디터 메뉴 축소/확대 가능 버튼 보이기
	config.resize_dir = 'both'  //  사이즈 둘 다 조정
	config.resize_minWidth = 200;
	/*config.resize_maxWidth = 400;*/
	config.resize_minHeight = 200;
	config.resize_maxHeight = 600;
   /* 업로드 설정*/
	config.filebrowserImageUploadUrl = '/imageUpload.do?type=Images',
 /*   config.filebrowserUploadUrl      = '/upld/uploadFile.do?type=Files';*/
    config.filebrowserWindowWidth = '640';
    config.filebrowserWindowHeight= '480';
    /* 메뉴 버튼*/
	config.toolbarGroups = [
		{ name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
		{ name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
		{ name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
		{ name: 'forms', groups: [ 'forms' ] },
		'/', // 다음줄
		{ name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
		{ name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
		{ name: 'links', groups: [ 'links' ] },
		{ name: 'insert', groups: [ 'insert' ] },
		'/',
		{ name: 'styles', groups: [ 'styles' ] },
		{ name: 'colors', groups: [ 'colors' ] },
		{ name: 'tools', groups: [ 'tools' ] },
		{ name: 'others', groups: [ 'others' ] },
		{ name: 'about', groups: [ 'about' ] }
    ],
    

    
	/*화면에 보여질 버튼들..*/
    /* 이걸 싹지우면 버튼이 아예 안보입니다 ..*/
    config.plugins =
		'about,' +
		'a11yhelp,' +
		'basicstyles,' +
		'bidi,' +
		'blockquote,' +
		'clipboard,' +
		'colorbutton,' +
		'colordialog,' +
		'copyformatting,' +
		'contextmenu,' +
		'dialogadvtab,' +
		'div,' +
		'elementspath,' +
		'enterkey,' +
		'entities,' +
		'filebrowser,' +
		'find,' +
		/*'flash,' +*/
		'floatingspace,' +
		'font,' +
		'format,' +
		'forms,' +
		'horizontalrule,' +
		'htmlwriter,' +
		/*'image,' +*/
		'iframe,' +
		'indentlist,' +
		'indentblock,' +
		'justify,' +
		'language,' +
		'link,' +
		'list,' +
		'liststyle,' +
		'magicline,' +
		'maximize,' +
		'newpage,' +
		'pagebreak,' +
		'pastefromword,' +
		'pastetext,' +
		'preview,' +
		'print,' +
		'removeformat,' +
		'resize,' +
		'save,' +
		'selectall,' +
		'showblocks,' +
		'showborders,' +
		'smiley,' +
		'sourcearea,' +
		'specialchar,' +
		'stylescombo,' +
		'tab,' +
		'table,' +
		'tableselection,' +
		'tabletools,' +
		'templates,' +
		'toolbar,' +
		'undo,' +
		'uploadimage,' +
		'wysiwygarea';
	/* %REMOVE_END%*/
	
	/*이거 안하면 에러 */
	config.filebrowserUploadMethod = 'form';
	
};





