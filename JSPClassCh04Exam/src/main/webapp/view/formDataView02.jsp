<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>학생 등록 정보</h2>
	이름: ${ name }<br>
	성별: ${ gender }<br>
	연락처: ${ phoneNum }<br>
	희망 취업 분야:
	${ job }
	<br>
	관심분야:
	${ field }
</body>
</html>