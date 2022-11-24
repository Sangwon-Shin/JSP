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
	<c:forEach var="i" begin="0" end="${ job.size() }">
		<c:if test="${ not empty job[i + 1] }">
			${ job[i] },
		</c:if>
		<c:if test="${ empty job[i + 1] }">
			${ job[i] }
		</c:if>
	</c:forEach>
	<br>
	관심분야:
	<c:forEach var="i" begin="0" end="${ field.size() }">
		<c:if test="${ not empty field[i + 1] }">${ field[i] },</c:if>
		<c:if test="${ empty field[i + 1] }">${ field[i] }</c:if>
	</c:forEach> 
	
</body>
</html>