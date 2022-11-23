<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST 방식 요청처리</title>
</head>
<body>
	<!-- form 태그의 method 속성을 post로 지정 하였다. default는 get 이다. -->
	<form name="f1" action="postRequest" method="post" >
		아 이 디 : <input type="text" name="id" /><br/>
		비밀번호 : <input type="password" name="pass" /><br/>
		<input type="reset" value="다시쓰기" />
		<input type="submit" value="로 그 인" />
	</form>
	<!-- 
		a 태그를 이용한 요청은 GET 방식이므로 요청 데이터를 
		서버로 보낼 때는 요청 URL 뒤에 데이터를 추가해 서버로 보낸다. 
	-->
	<a href="postRequest?num1=10&num2=20">링크로 요청하기</a> <!-- 하이퍼링크는 항상 get 방식이다. -->
	<!-- 그래서 doGet 이 실행되기 때문에 로그인 결과가 아니라 두 수의 곱이 출력된다. -->
</body>
</html>