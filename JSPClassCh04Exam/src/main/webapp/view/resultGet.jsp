<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
   	int firstNum = (Integer)(request.getAttribute("firstNum"));
   	int secondNum = (Integer)(request.getAttribute("secondNum"));
   	if(firstNum > secondNum){
		int tmp = secondNum;
		secondNum = firstNum;
		firstNum = tmp;
   	}
   	int dif = secondNum - firstNum;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2><%= firstNum %> 이상 <%= secondNum %> 이하인 정수의 합</h2>
	<% if(dif < 4){ 
		for(int i = 0; i < dif; i++){ %>
				<%= firstNum + i %> +
	<%  
			} 
	%>		
				<%= firstNum + dif  %>	
	<%  
		} else { 
	%>						
		<%= firstNum %> + <%= firstNum + 1 %> + … + <%= secondNum - 1 %> + <%= secondNum %>
	<%  
		} 
	%>	
	= <%= (Integer)((secondNum - firstNum +1) * (firstNum + secondNum) / 2 ) %><br>
</body>
</html>