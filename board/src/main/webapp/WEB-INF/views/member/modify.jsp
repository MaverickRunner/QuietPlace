<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트</title>
</head>
<body>

<form role="form" method="post" autocomplete="off">
	<p>
		<label id ="userId">아이디 :</label>
		<input type = "text" id ="userId" name = "userId" value="${ member.userId }"/>
	</p>
	<p>
		<label>닉네임 : ${member.userName}</label> 
	</p>
	<p>
		<label for ="userPass">새로운 비밀번호 :</label>
		<input type = "password" id = "userPass" name = "userPass" />
	</p>
	<p>
		<button type="submit">회원정보 수정</button>
	</p>
	<p>
		<a href="/">처음으로</a>
	</p>
</form>

</body>
</html>