<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <script src="/resources/js/main.js" defer></script>
    <link rel="stylesheet" type="text/css" href="/resources/css/signup_main.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/font/font.css" type="text/css">
</head>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script>
	function form_check() {
		var id = document.getElementById("userId");
		var pw = document.getElementById("userPass");
		var name = document.getElementById("userName");
	
		if (id.value == "") {
			alert("사용하실 아이디를 입력해주세요!")
			userId.focus();
			return false;
		};
		
		if (pw.value == "") {
			alert("사용하실 비밀번호를 입력해주세요!")
			userPass.focus();
			return false;
		};
		
		if (name.value == "") {
			alert("사용하실 닉네임을 입력해주세요!")
			userName.focus();
			return false;
		};
		
		if (test="${ member != null }") {
			alert("회원가입이 완료되었습니다. 반가워요!")
		};
		
		
	
		document.register_form.submit();
	} 
	
	function fn_idChk() {
		$.ajax({
			url : "/member/idChk" ,
			type : "post" ,
			dataType : "json" ,
			data : {"userId" : $("#userId").val()},
			success : function(data) {
				if(data == 1) {
					alert("중복된 아이디입니다.");
				} else if(data == 0) {
					$("#idChk").attr("value" , "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		})
	}
</script>
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

    <div class="main_signup">
        <div class="signup_box">
            <div class="signup_signupbox">
                <a href="/">
                    <i class="fab fa-slideshare fa-2x"></i>
                    <span>QuietPlace</span>
                </a>
            </div>
        </div>
    <div class="signup_wrap_box">
    
		 <form name = "register_form" role="form" method="post" autocomplete="off">
			<div class="signup_id">
            	아이디
        	</div>
				<input type = "text" id ="userId" name = "userId" value="${ member.userId }" placeholder="아이디"
                    style="min-height: 40px; min-width: 300px; color: gray;" autofocus/>
				<button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
			<div class="signup_pw">
            	비밀번호
       		</div>
				<input type = "password" id = "userPass" name = "userPass" placeholder="비밀번호"
                    style="min-height: 40px; min-width: 300px; color: gray;" />
			
			<div class="signup_name">
            	닉네임
        	</div>
        	<input type = "text" id = "userName" name = "userName" placeholder="닉네임"
                    style="min-height: 40px; min-width: 300px; color: gray;" />
			<div class="submit">
				<button type="submit" id = "submit" onclick="form_check()">회원 가입하기</button>
			</div>
			<div class="submit">
				<button type="submit" id = "submit"> 처음으로 </button>
			</div>
		</form>         
        </div>
        <c:if test="${ msg == false }">
			<p style="color:#f00;"> 로그인에 실패했습니다. 아이디 또는 패스워드를 다시 입력해주세요. </p>
		</c:if>
</body>
</html>