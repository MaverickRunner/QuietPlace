<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>알아보다</title>
    <script src="/resources/js/main.js" defer></script>
    <link rel="stylesheet" type="text/css" href="resources/css/find.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/font/font.css" type="text/css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fc21bbf49e86de28768127d7c7310c63"></script>
<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

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
	<div id="map" style="width:500px;height:400px;"></div>
		
	
    <div id="footer">COPYRIGHT (C) SMARTSOFTWARE.INC.ALL RIGHTS RESERVED.</div>
</body>
</html>