<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="js/jquery-3.6.1.min.js"></script>
<script>
	$(function() {
		$(".multi").mousedown(function(){
			   var $self = $(this);
			   if ($self.prop("selected"))
			          $self.prop("selected", false);
			   else
			       $self.prop("selected", true);
			   return false;
		});
	});

</script>
<title>Insert title here</title>
</head>
<body>
	<h2>선호도 테스트</h2>
	<form name="pref" action="ch0501ExamProcess.jsp" method="post">
		이름:
		<input type="text" name="name"><br><br>
		좋아하는 색:
		<input type="radio" name="color" value="빨강색"><label for="color">빨강색</label>
		<input type="radio" name="color" value="초록색"><label for="color">초록색</label>
		<input type="radio" name="color" value="파랑색"><label for="color">파랑색</label>
		<br><br>
		좋아하는 음식:
		<select name="food">
			<option value="짜장면">짜장면</option>
			<option value="짬뽕">짬뽕</option>
			<option value="볶음밥">볶음밥</option>
			<option value="돈까스">돈까스</option>
		</select>
		<br><br>
		좋아하는 동물(모두 고르세요):<br>
		<input type="checkbox" name="animal" value="햄스터"><label for="animal">햄스터</label>
		<input type="checkbox" name="animal" value="고양이"><label for="animal">고양이</label>
		<input type="checkbox" name="animal" value="호랑이"><label for="animal">호랑이</label>
		<input type="checkbox" name="animal" value="사자"><label for="animal">사자</label>
		<input type="checkbox" name="animal" value="개"><label for="animal">개</label>
		<br><br>
		취미(모두 고르세요):<br>
		&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
		<select name="hobby" size="4" multiple>
			<option class="multi" value="게임">게임</option>
			<option class="multi" value="여행">여행</option>
			<option class="multi" value="독서">독서</option>
			<option class="multi" value="낚시">낚시</option>
		</select><br><br>
		<button type="reset">다시쓰기</button>
		<button type="submit">전송하기</button>
	</form>
</body>
</html>