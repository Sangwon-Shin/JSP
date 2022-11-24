<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 기본 정보</h2>
	이    름: ${ name.equals("") ? "null" : "name" }<br>
	아 이 디: ${ id }<br>
	비밀번호: ${ pass }<br>
	성    별: ${ gender }<br>
	공지메일: ${ nMail }<br> 
	광고메일: ${ aMail }<br> 
	정보메일: ${ iMail }<br>
	직    업: ${ job }<br> 
</body>
</html>