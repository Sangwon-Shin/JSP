<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>나의 정보</h2>
	<form name="f1" action="requestInfoByPost" method="post" >
	이름: <input type="text" name="name"><br>
	나이: <input type="text" name="age"><br>
	주소: <input type="text" name="address"><br>
	<input type="submit" value="전송하기" />
</body>
</html>