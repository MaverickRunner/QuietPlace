<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>알아보다</title>
    <script src="/resources/js/main.js" defer></script>
    <link rel="stylesheet" type="text/css" href="resources/css/about.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/font/font.css" type="text/css">
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
	<div class="about_wrap">
		<div class="about_title">
			<div class="main_title">
				콰이어트 플레이스 소개
			</div>
			<div class="sub_title">
				콰이어트플레이스는 소음에 고통받는 현실을 극복해나가고자 <br>
				서로의 배려와 존중을 키워나가는 가치를 추구하며 , 최종적으로는 소음으로 인한 다툼이 사라지는 사회를 만들어 나갑니다.
			</div>
			<div class="about_us_img"></div>
			<div class="title">
				QuietPlace
			</div>
			<div class="main">
					콰이어트플레이스는 단순히 소음관련의 이야기를 나누는 커뮤니티만이 아니라, 여려명의 이용자들이 지표로 삼을수있는 <br>
					이정표 같은 역할의 그래프와 같은 객관적 정보도 제공하고있습니다. 저희는 아두이노를 이용한 측정기를 사용하여 <br>
					정확한 정보를 전달해드리려 노력하고있으며 또한 현 상황에 안주하지 않고 아두이노의 확장성을 응용해 더 정확하고, <br>
					다양한 편의성을 무기로 이용자분들과 함께 성장할수 있도록 노력하고 있습니다.
			</div>
		</div>
		<div class="table_title">
				COMPANY PROFILE
			</div>
		<div class="about_table">
			<table>
				<tr>
				    <th>설립연도</th>
				    <td>2021년4월</td>
				</tr>
				<tr>
				    <th>본사 위치</th>
				    <td>대전광역시 동구 가양동 우암로 352-21</td>
				</tr>
				<tr>
				    <th>주요서비스</th>
				    <td>소음측정을 통한 데시벨 정보제공, <br> 게시판 커뮤니티서비스</td>
				</tr>
		    </table>
		</div>		
		
	</div>
    <div id="footer">COPYRIGHT (C) SMARTSOFTWARE.INC.ALL RIGHTS RESERVED.</div>
</body>
</html>