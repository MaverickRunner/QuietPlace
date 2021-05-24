<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>소통하다</title>
    <script src="/resources/js/main.js" defer></script>
    <link rel="stylesheet" type="text/css" href="/resources/css/board.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/font/font.css" type="text/css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script>
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
    <div class="page_title" style="text-align: center;
	font-size: 28px; padding-top:30px; padding-bottom: 30px; font-weight: bold">
    	소통의 공간
    </div>
    
<div class = "board_wrap">
<table class="table table-hover" style="margin-left: auto; margin-right: auto;">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	
	<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${ list.bno }</td>
				<td>
					<a href="/board/view?bno=${ list.bno }">${ list.title }</a>
				</td>
				<td>
					<fmt:formatDate value="${ list.regDate }" pattern = "yyyy-MM-dd"/>
				</td>
				<td>${ list.writer }</td>
				<td>${ list.viewCnt }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="board_active_btn_wrap">
	<button id="board_page_btn" type="submit" class="btn btn-danger" onclick="location.href = '/board/listPageSearch?num=1'">글목록</button>
	<button id="board_write_btn" type="submit" class="btn btn-primary" onclick="location.href = '/board/write'">글쓰기</button>
</div>
<div>
	
<c:if test="${page.prev}">
 <span>[ <a href="/board/listPageSearch?num=${page.startPageNum - 1}${page.searchTypeKeyword}">이전</a> ]</span>
</c:if>

<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
 <span>
 
  <c:if test="${select != num}">
   <a href="/board/listPageSearch?num=${num}${page.searchTypeKeyword}">${num}</a>
  </c:if>    
  
  <c:if test="${select == num}">
   <b>${num}</b>
  </c:if>
    
 </span>
</c:forEach>

<c:if test="${page.next}">
 <span>[ <a href="/board/listPageSearch?num=${page.endPageNum + 1}${page.searchTypeKeyword}">다음</a> ]</span>
</c:if>
	<div>
	 <select name="searchType">
	     <option value="title" <c:if test="${page.searchType eq 'title'}">selected</c:if>>제목</option>
	     <option value="content" <c:if test="${page.searchType eq 'content'}">selected</c:if>>내용</option>
	     <option value="title_content" <c:if test="${page.searchType eq 'title_content'}">selected</c:if>>제목+내용</option>
	     <option value="writer" <c:if test="${page.searchType eq 'writer'}">selected</c:if>>작성자</option>
	 </select>
	 
	 <input type="text" name="keyword" value="${page.keyword}"/>
	 
	 <button class="btn btn-danger" type="button" id="searchBtn">검색</button>
	</div>
	
	
	
	<script>

 document.getElementById("searchBtn").onclick = function () {
    
  let searchType = document.getElementsByName("searchType")[0].value;
  let keyword =  document.getElementsByName("keyword")[0].value;
  
  location.href = "/board/listPageSearch?num=1" + "&searchType=" + searchType + "&keyword=" + keyword;
  
  console.log(searchType)
  console.log(keyword)
 };
</script>
	
</div>
</div>
	

</body>
</html>