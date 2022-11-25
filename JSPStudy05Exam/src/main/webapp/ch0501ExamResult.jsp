<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%
	String name = request.getParameter("name");
	String color = "";
	String food = "";
	String animal = "";
	String hobby = "";
	if(request.getParameter("color") != null){
		color = request.getParameter("color") + "을 좋아하고, ";
	} else {
		color = "빨강, 초록, 파랑색은 좋아하지 않고, ";
	}
	if(request.getParameter("food") != null){
		food = request.getParameter("food") + "을 좋아하며, ";
	} else {
		food = "짜장면, 짬뽕, 볶음밥, 돈까스는 좋아하지 않으며, ";
	}
	if(request.getParameter("animal") != null){
		ArrayList<String> animalList = new ArrayList<String>(Arrays.asList(request.getParameterValues("animal")));
		String animals = String.join(", ", animalList);
		animal = "좋아하는 동물은 " + animals + "이고, " ;	
	} else {
		animal = "햄스터, 고양이, 호랑이, 사자, 개는 좋아하지 않고, ";
	}
	if(request.getParameter("hobby") != null){
		ArrayList<String> hobbyList = new ArrayList<String>(Arrays.asList(request.getParameterValues("hobby")));
		String hobbys = String.join(", ", hobbyList);
		hobby = hobbys + "의 취미를 가지고 계십니다. "; 	
	} else {
		hobby = "게임, 여행, 독서, 낚시는 취미가 아닙니다. ";
	}
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선호도 테스트 결과</title>
</head>
<body>
<h2>선호도 테스트 결과</h2>
<h3><%= name %>님의 선호도 테스트 결과</h3>
<%= name %>님은 <%= color %><%= food %><br>
<%= animal %><br>
<%= hobby %>
</body>
</html>