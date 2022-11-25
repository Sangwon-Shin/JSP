<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.regex.Matcher, java.util.regex.Pattern, java.util.*"%>

<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	System.out.println(name);
	Pattern pattern = Pattern.compile("^[가-힣]{2,8}$");
	Matcher matcher = pattern.matcher(name);
	Boolean bool = matcher.find();

%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	if(!bool){
%>
<script type="text/javascript">
	alert("이름은 한글 2~8글자로 입력하세요");
</script>
<title>잘못된 양식 알림</title>
	<h3>선호도 테스트를 하기 위해서는 이름을 정확히 입력하세요</h3>
	<a href="ch0501ExamForm.jsp">돌아가기</a>
</head>
<body>

</body>
</html>
<%
	} else {
		pageContext.forward("ch0501ExamResult.jsp");
	}
%>
