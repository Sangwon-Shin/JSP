<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int sum = 0;
	for(int i = 0; i < 50; i++){
		sum += 2 * (i + 1);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2> 2 + 4 + 6 + ... + 100 = <%= sum %>
	</h2>
</body>
</html>