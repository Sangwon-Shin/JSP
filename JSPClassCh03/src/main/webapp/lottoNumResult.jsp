<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- c: core -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	ul{list-style-type: none;}
	ul > li{
		height: 30px;
	}
	li > span { color: blue;}
</style>
</head>
<body>
	<h2>로또 당첨번호 리스트</h2>
	<!-- 로또 당첨 번호가 존재하는 경우 -->
	<c:if test="${not empty lottoList}">
	<ul>
		<c:forEach var="lotto" items="${lottoList}"> <!-- }와 " 사이에 공백 있으면 문자열로 간주된다. -->
			<li>${lotto.times} - ${lotto.num1}, ${lotto.num2},
			 ${lotto.num3}, ${lotto.num4}, ${lotto.num5}, ${lotto.num6} + <span>보너스번호</span>${lotto.bonusNum}</li>
		</c:forEach>
	</ul>
	</c:if>
	<!-- 로또 당첨 번호가 존재하지 않는 경우 -->
	<c:if test="${empty lottoList}">	<!-- test 라는 속성으로 조건문 기술. -->
		로또 번호가 존재하지 않습니다.
	</c:if>
</body>
</html>