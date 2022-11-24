<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery-3.6.1.min.js"></script>
<script>
	$(function() {
		$('input[type="submit"]').mousedown(function () {
	        var reg1 = /^\d{3,4}$/;
			var reg2 = /^\d{4}$/;
			if(!reg1.test($('input[name="phoneNum2"]').val()) || !reg2.test($('input[name="phoneNum3"]').val())){
				alert("잘못된 전화번호입니다.");
			}
		});
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
</head>
<body>
	<h2>학생 등록 정보</h2>
	<form name="stdInfo" action="formData02" method="post">
	학 생 명:
	<input type="text" name="name"><br> 
	성    별:
	<input type="radio" name="gender" value="male"><label for="gender">남성</label>
	<input type="radio" name="gender" value="female"><label for="gender">여성</label><br>
	연 락 처:
		<select name="phoneNum1">
			<option>010</option> 
			<option>011</option> 
			<option>015</option> 
			<option>016</option> 
			<option>017</option> 
			<option>018</option> 
			<option>019</option>
		 </select>
		 -
		 <input class="phone" type="text" name="phoneNum2" size="4"> - 
		 <input class="phone" type="text" name="phoneNum3" size="4">
		 <br>
	희망 취업 분야<br>
		<input type="checkbox" name="job" value="si"><label for="job">SI 업체</label> 
		<input type="checkbox" name="job" value="sm"><label for="job">SM 업체</label> 
		<input type="checkbox" name="job" value="solution"><label for="job">솔루션 업체</label>
		<br>
	관심분야:<br>
		<select name="field" size="4" multiple>
			<option class="multi" value="Android">안드로이드</option>
			<option class="multi" value="JavaScript">자바스크립트</option>
			<option class="multi" value="Spring">스프링</option>
			<option class="multi" value="jQuery">제이쿼리</option>
		</select>
		<br>
		<input type="reset" value="다시쓰기">
		<input type="submit" value="학생등록">
	</form>
</body>
</html>