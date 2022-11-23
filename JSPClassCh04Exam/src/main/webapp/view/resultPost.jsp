<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <!-- 
    	로그인 성공 여부 판단 방법
    	1. 자바토드 - 스크립틀릿 + 표현식
    	2. JSTL + EL
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원정보</h2>
	이름: ${ name }<br>
	나이: ${ age }<br>
	성별: ${ gender }<br>
	주소: ${ address }<br>
</body>
</html>