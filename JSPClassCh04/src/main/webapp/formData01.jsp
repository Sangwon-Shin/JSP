<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 기본 정보 입력 폼</title>
<style>
	#mail {
		height: 50px;
		display: none;
		
	}
</style>
<script src="js/jquery-3.6.1.min.js"></script>
<script>
	
	/* ↓ jQuery 3.xx 에서는 안된다. */
	/* 
	$(window).load(function() {
		
	});
	 */
	 
	/* ↓ jQuery 3.xx 에서 작동. */ 
	/*  
	$(window).on("load", function() {
		alert("window.load1");
	});
	*/
	/* 여러 작업을 { , , } 로 지정 가능. */
	/*
	$(window).on({"load", function() {
		alert("window.load2");
	}
	});
	*/
	/* ↓ $(function() {) = $(document).ready(function(){ */
	/*
	$(function() {
		$($("div")[0]).click(function(){
			
		});
		
		$($("div")[0]).on({
			"click": function(){
				
			},
			"dblclick": function(){
				
			}}
		);
	}
	*/
		/* 
			onload 는 문서에 포함된 이미지, 영상 등이 전부 다 불러졌을 때의 조건.
			document.ready 보다 나중이다
		*/
		/*
		window.onload = function() {
			
		}
		
		function f1() {
			alert("여기는 f1");
		}
		*/
		/*
		$(function(){
			$("button").click(function(e){
				//console.log(e);
				var text = $(this).text();
				//console.log(text);
				// 1번 일 때
				
				// 2번 일 때
			});
		});
		*/		
		
	window.addEventListener("load", function() {
		
		var btns = document.querySelectorAll("button");
		console.log(btns);
		for(var i = 0; i < btns.length; i++){
			btn = btns[i];
			//console.log(btn);
			btn.addEventListener("click", function() {
				this.innerText = "호호호";			
			});			
			
		//for(var b in btns) {
			
		}
		
		
		console.log("load: " + this);
	});	
	
	/*
	$(function(){
		$("button").click(function(e){
			// 속성값으로 판단
			// 텍스트로 판단
			//console.log($(this).attr("data-value", 3));
			console.log($(this).is("#btn1")); //$(this).is("#btn1") 의 리턴값은 true, false이다. 이것을 if문에 사용하면 편리하다.  
			if($(this).is("$btn1")){
				//$("#mail").css({"display": "block", "height": "50px"}).slideDown(1000);
				$("#mail").slideDown(1000);
			}
			if($(this).is("$btn2")){
				$("#mail").slideUp(1000);
			}
		});
	});
	*/
</script>
</head>
<body>
	<h2>회원 기본 정보 입력</h2>
	<button id="btn1" data-value="1">클릭1</button>
	<button id="btn2" data-value="2">클릭1</button>
	<button id="btn3" data-value="3">클릭1</button>
	<div></div>
	<!-- form 태그의 method 속성을 지정하지 않으면 GET 방식 요청 -->
	<div id="mail">
	<form name="fMember1" action="formData01">
		<p>이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름 : 
			<input type="text" name="name" /></p>
		<p>아&nbsp;&nbsp;이&nbsp;&nbsp;디 : 
			<input type="text" name="id" /></p>
		<p>비밀번호 : <input type="password" name="pass" /></p>		
		<!-- 라디오 버튼은 name 속성의 값을 동일하게 지정해야 그룹으로 묶인다. -->
		<p>성&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;별 :
			<input type="radio" name="gender" value="male"/>남&nbsp;&nbsp;&nbsp;
			<input type="radio" name="gender" value="female"/>여</p>		
		<!-- 
			체크박스는 name 속성의 값을  각각 지정할 수도 있고
			동일하게 지정할 수도 있다.
		-->
		<p>메일수신 :
			<input type="checkbox" name="nMail"/>
				공지메일 받음&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="aMail"/>
				광고메일 받음&nbsp;&nbsp;&nbsp;
			<input type="checkbox" name="iMail"/>
				정보메일 받음&nbsp;&nbsp;&nbsp;</p>		
		<!-- 
			<option> 태그에 value 속성을 지정하지 않으면 
			<option> 태그로 감싼 문자열이 value가 된다.
		-->
		<p>직&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;업 :	
			<select name="job">
				<option>회사원</option>
				<option>학생</option>
				<option>주부</option>
				<option>기타</option>
			</select></p>			
		<p>
			메모: <br>
			<textarea name="memo" cols="40" rows="5"></textarea>			
		</p>
		<!-- 
			submit 버튼이 클릭되면 무조건 form 태그의 action 속성에서 
			지정한 URL로 무조건 폼 데이터를 전송한다.
		-->
		<p><input type="reset" value="다시쓰기" />
		<input type="submit" value="가입하기" /></p>
	</form>
	</div>
</body>
</html>