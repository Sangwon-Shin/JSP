<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
    <%-- <%@ %>: 지시자 --%>
<%@ page import="java.util.*" %>
<%
	// 스크립틀릿 scriptlet - 자바 코드를 작성하는 영역
	Calendar today = Calendar.getInstance();	// Calendar 클래스는 생성자를 쓸 수 없고, getInstance 메소드를 써야 한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>오늘의 날짜</h2>
	<!-- ↓ 표현식 -->
	<!-- 세 가지 종류: 지시자, 스크립틀릿, 표현식 -->
	현재시각: <%= today.get(Calendar.YEAR) %>년
	<%= today.get(Calendar.MONTH) + 1 %>월
	<!-- 월은 0부터 시작하기 때문에 +1 해야 한다. -->
	<%= today.get(Calendar.DAY_OF_MONTH) %>일
	<%= today.get(Calendar.HOUR_OF_DAY) %>:
	<%= today.get(Calendar.MINUTE) %>:
	<%= today.get(Calendar.SECOND) %>
</body>
</html>