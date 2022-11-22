<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.jspstudy.ch03.vo.*" %>
<%
	ArrayList<Student> arrList = new ArrayList<Student>();
	arrList.add(new Student("홍길동", 23, "남성"));
	arrList.add(new Student("어머나", 21, "여성"));
	arrList.add(new Student("왕호감", 22, "남성"));
	arrList.add(new Student("왕빛나", 23, "여성"));
	arrList.add(new Student("이나래", 25, "여성"));

	request.setAttribute("arrList", arrList);
	
	pageContext.forward("byScriptlet.jsp");
%>