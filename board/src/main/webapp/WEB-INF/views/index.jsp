<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>QuietPlace</title>
    <script src="/resources/js/main.js" defer></script>
    <link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/font/font.css" type="text/css">
<script type="text/javascript">
	function logout() {
		alert("로그아웃 되었습니다.");
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
            <li><a href="/find">찾아보다</a></li>
            <li><a href="">공지사항</a></li>
        </ul>
        <ul class="navbar_icons">
            <c:if test="${ member == null }">
            <a href="login_page">
                <li><i class="fas fa-key"> </i>로그인</li>    
            </a>
       	</c:if>
       	<c:if test="${ member != null }">
			<li> <a href="my_page"> <i class="fas fa-user"></i> 마이페이지 </a></li> 
		</c:if>
		<c:if test="${ member == null }">
            <a href="/member/register">
                <li><i class="far fa-address-card"> </i>회원가입</i></li>
            </a>
        </c:if>
        <c:if test="${ member != null }">
			 <li><a href="/member/logout" onclick="logout()"><i class="fas fa-sign-out-alt"></i> 로그아웃 </a> </li>
		</c:if>  
        </ul>

        <a href="#" class="navbar_toogleBtn">
            <i class="fas fa-bars"></i>
        </a>
    </nav>
    
    <div id="main">
        <div class="contents">조용히</div>
        <div class="contents_add">
            고요함이 주는 아름다운 선물
        </div>
        <div class="contents_add_2">
            소음은 이제 그만 듣고싶어요
        </div>
        <div class="contents_2">지내고싶은사람들</div>
    </div>

    <div id="middle">
        <div class="box_1">
            <div class="box_icons">
                <img src="/resources/img/box_icons_1.png" alt="익명성">
            </div>
            <div class="box_title">
                익명성
            </div>
            <div class="box_inline">
               도서관에서의 책장넘기는소리 <br>
               카페에서의 수다소리, <br>
               서로 얼굴붉히며 이야기 하는것은 <br> 
               이제 그만! 
            </div>   
            <button class="box_button_1">자세히보기</button>
        </div>
        <div class="box_2">
            <div class="box_icons">
                <img src="/resources/img/box_icons_2.png" alt="편리성">
            </div>
            <div class="box_title_2">
                편리성
            </div>
            <div class="box_inline_2">
                누가 있을지, 누가 시끄럽지 않을지 <br>
                걱정은 이제 그만! <br>
                간편하게 확인하고 이동하세요.
             </div> 
             <button class="box_button_2">자세히보기</button>
        </div>
        <div class="box_3">
            <div class="box_icons">
                <img src="/resources/img/box_icons_3.png" alt="소통성">
            </div>
            <div class="box_title">
                소통성
            </div>
            <div class="box_inline_3">
                다양한 사람들과 이야기하며 다양한<br>
                의견과 나의 의견을 공유해보아요.<br>
             </div> 
             <button class="box_button_3">자세히보기</button>
        </div>
    </div>
    <div class="middle_2">
        <div class="middle_title">
            조용한 장소를 원하시나요?
            <br>
        
        <div class="middle_sub_title">지금 찾아보세요</div> 
            <button class="middle_2_Btn">찾아보기</button>    
        </div>
    </div>
    <div class="under">
        <div class="under_title">
            여러분들의 <br>
            생각을 들려주세요.    
        </div>
        <br>
        <div class="under_sub_title">
            다양한 의견, 문제점이 느껴지신다면 <br>
            저희에게 알려주세요 더욱 성장해 나가겠습니다.
        </div>
    </div>

    <div id="footer">COPYRIGHT (C) SMARTSOFTWARE.INC.ALL RIGHTS RESERVED.</div>
</body>
</html>