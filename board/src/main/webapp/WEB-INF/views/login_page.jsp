<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <script src="/resources/js/login_page.js" defer></script>
    <link rel="stylesheet" type="text/css" href="/resources/css/login.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/font/font.css" type="text/css">
<script type="text/javascript">
/*	var msg = ${ msg }
	var test = ${ member }
	function check() {
		if(msg == false) {
			alert("아이디를 확인하고 다시시도해주세요");
		} else if(test != null  ) {
			alert("${member.userName}님 환영합니다.");
		}
	} */
	
	function form_check() {
		var id = document.getElementById("userId");
		var pw = document.getElementById("userPass");
		
		
		if (id.value == "") {
			alert("아이디를 입력해주세요!")
			userId.focus();
			return false;
		};
		
		if (pw.value == "") {
			alert("비밀번호를 입력해주세요!")
			userPass.focus();
			return false;
		};
		
		if (test=${ msg == false }) {
			alert("로그인에 실패했습니다. 아이디 또는 패스워드를 다시 입력해주세요!")
			userId.focus();
			return false;
		};
		
		if (test="${ member != null }") {
			alert("환영합니다!")
		};
		
	
		document.login_form.submit();
	}
</script>
</head>
<body>
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
        <c:if test="${ member == null }">
            <a href="login_page">
                <li><i class="fas fa-key"> </i>로그인</li>    
            </a>
       	</c:if>
       	<c:if test="${ member != null }">
			<p> 반갑습니다! </p>
		</c:if>
            <a href="/member/register">
                <li><i class="far fa-address-card"> </i>회원가입</i></li>
            </a>
            
        </ul>

        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>

    <div class="main_login">
        <div class="login_box">
            <div class="login_logobox">
                <a href="/index.html">
                    <i class="fab fa-slideshare fa-2x"></i>
                    <span>QuietPlace</span>
                </a>
            </div>
             <div class="login_area">
             	<div class="login_id">
      				<c:if test="${ member == null }">
						<form name="login_form" role="form" method="post" autocomplete="off" action="/member/login">
							<input type="text" id = "userId" name="userId"  placeholder="아이디"
				                    style="min-height: 40px; min-width: 300px; color: gray;" autofocus />
				</div>
				<div class="login_pw">
					<input type="password" id = "userPass" name="userPass" placeholder="비밀번호"
                    style="min-height: 40px; min-width: 300px;"/>
				</div>
				<div class="submit" style="padding-bottom: 8px;">
					<button type="button" onclick="form_check()">로그인</button>
				</div>
				<div class="submit">
					<button type="button" onclick=""> <a href="/member/register">회원가입</a> </button> 
				</div> 
					</c:if>
						</form>
		<c:if test="${ member != null }">
			<a href="member/modify">회원정보 수정</a> <a href="member/logout">로그아웃</a> <a href="member/withdrawal">회원 탈퇴</a>
		</c:if>
       </div>
            <div class="login_etc">
                <ul class="login_menu">
                    <li><div class="login_sub_menu"><a href="">아이디 찾기</a></div></li>
                    <li><div class="login_sub_menu"><a href="">비밀번호 찾기</a></div></li>
                    <li><div class="login_sub_menu_2"><a href="">회원가입</a></div></li>
                </ul>
            </div>
        
    </div>
</body>
</html>