<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
<head>
<style>
	.ck.ck-editor {
    width: 1500px ! important; 
    margin: auto ! important;;
	}
	.ck-editor__editable {
		height: 500px;
	}
	.mb-3 {
    padding-top: 100px;
    text-align: center;
}
</style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QuietPlace</title>
    <script src="/resources/js/main.js" defer></script>
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/font/font.css" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="/resources/css/board.css">
</head>
<body>
<script>


function content_check() {
	
	var title = document.getElementById("title");
	
	
	if(title.value == "") {
		alert("제목을 입력해주세요!")
		title.focus();
		return false;
	}
	if (CKEDITOR.instances.content.getData() == '') { 
		alert("내용을 입력해주세요!")  
		return false; 
		 } 
	
	document.write_content.submit();
}
</script>

    <nav class="navbar">
        <div class="navbar_logo">
            <a href="/">
                <i class="fab fa-slideshare fa-2x"></i>
                <span>
                    QuietPlace    
                </span>
            </a>
        </div>

         <ul class="navbar_menu">
            <li><a href="/about">알아보다</a></li>
            <li><a href="/board/listPageSearch?num=1">소통하다</a></li>
            <li><a href="">찾아보다</a></li>
            <li><a href="">공지사항</a></li>
        </ul>
        <ul class="navbar_icons">
            <a href="login_page">
                <li><i class="fas fa-key"> </i>로그인</li>    
            </a>
            <a href="/member/register">
                <li><i class="far fa-address-card"> </i>회원가입</i></li>
            </a>
            
        </ul>

        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>
    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>

<c:if test="${ msg == null }">

	<form name = "write_content" method="post" action="/board/write">
	<div class="form-floating mb-3">
		<input id = "title" name="title" class="form-control form-control-lg" type="text" aria-label=".form-control-lg example" style="width:1500px; margin: auto;">
	</div>
	<div class="writer_wrap">
		<input class="writer_name" type="text" name="writer" value="${ member.userName }" readonly="readonly" />
	</div>
	<textarea name="content" id="content"></textarea>
    <script>
    // 3. CKEditor5를 생성할 textarea 지정
    ClassicEditor
        .create( document.querySelector( '#content' ) )
        .catch( error => {
            console.error( error );
        } );
    </script>
	<div class="button_wrap"> 
		<button type="button" class="btn btn-primary" onclick="content_check()">작성</button>
		<button type="submit" class="btn btn-primary" onclick="location.href = '/board/listPageSearch?num=1'">취소</button>
	</div>
	</form>

</c:if>
<c:if test="${ msg == false }">
	<div class="write_fail"> 로그인을 하셔야 글을 작성할 수 있습니다. </div>
	
	<p> <a href="/"> 홈으로 </a> </p>
</c:if>

<script src="${pageContext.request.contextPath}/resources/common/js/ckeditor.js"></script>
</body>
</html>