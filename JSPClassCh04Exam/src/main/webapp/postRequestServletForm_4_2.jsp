<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST 방식 요청처리</title>
</head>
<body>
	<h2>회원가입</h2>
	<form name="f1" action="postRequest" method="post" >
		이 름 : <input type="text" name="name" /><br/>
		나 이 : <input type="text" name="age" /><br/>
		성 별 : <input type="radio" name="gender" id="male" value="남성"/>
				<label for="gender">남성</label>
				<input type="radio" name="gender" id="female" value="여성"/>
				<label for="gender">여성</label><br>
		주 소 : <input type="text" name="address" /><br/>
		<input type="reset" value="다시쓰기" />
		<input type="submit" value="전송하기" />
	</form>
</body>
</html>