<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	final int num = 100;
	public void write() {
		System.out.println("출력");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 페이지의 서블릿 변환</title>
</head>
<body>
	<%
		// Scriptlet. 자바 코드를 작성하는 영역
		int sum = 0;
		for(int i = 2; i <= 100; i+=2){
			sum += i;
		}
	%>
	2 + 4 + 6 + … + 100 = <%= sum %> 
</body>
</html>