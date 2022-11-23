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
<!-- 로그인 성공 → 인사말을 출력 -->
<c:if test="${ isLogin }">
	안녕하세요 ${ id } 님
</c:if>

<!-- 로그인 실패 -->
<c:if test="${ not isLogin }">
	로그인 실패
</c:if>


</body>
</html>