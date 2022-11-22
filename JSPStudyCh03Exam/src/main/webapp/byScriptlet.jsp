<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.jspstudy.ch03.vo.Student" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List By Scriptlet and Expression</title>
</head>
<body>
	<h2>스크립틀릿과 표현식을 이용한 학생 리스트 출력</h2>
	<ul>
	<% 
		ArrayList<Student> arrList = (ArrayList<Student>) request.getAttribute("arrList");
		for(int i = 0; i < arrList.size(); i++) { %>
		<li><%= arrList.get(i).getName() %>(<%= arrList.get(i).getAge() %>) - <%= arrList.get(i).getGender() %></li>
	<%} %>	
	</ul>
	<h2>JSTL과 EL을 이용한 학생 리스트 출력</h2>
	<ul>
	<c:forEach var="std" items="${arrList}"> 
		<li>${std.name}(${std.age}) - ${std.gender}</li>
	</c:forEach>
	</ul>
</body>
</html>