<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET 방식 요청처리</title>
</head>
<body>
	<h2>두 정수와 그 사이의 정수들 모두의 합(예: 1~3 이면 1+2+3=6)</h2>
	<form name="f1" action="getRequest" >
		첫 번째 정수 : <input type="number" name="num1" min="1" /><br/>
		두 번째 정수 : <input type="number" name="num2" min="1" /><br/>
		<input type="submit" value="계산결과보기" />
	</form>
</body>
</html>