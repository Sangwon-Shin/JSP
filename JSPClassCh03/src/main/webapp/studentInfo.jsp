<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jspstudy.ch03.vo.*" %>
<%
	Student s1 = new Student("이순신", 23, "남성");
	Student s2 = new Student();
	s2.setName("홍길동");
	s2.setAge(30);
	s2.setGender("남성");
	
	request.setAttribute("s1", s1);
	pageContext.forward("studentInfoResult.jsp");	// pageContext 는 내장객체라서 선언하지 않고 사용 가능
	// pageContext 의 스코프는 현재 페이지. 현재 페이지의 흐름에 대한 정보를 저장하기 위한 객체 	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>