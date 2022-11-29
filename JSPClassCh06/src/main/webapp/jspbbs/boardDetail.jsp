<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jspstudy.ch06.vo.*, com.jspstudy.ch06.dao.*" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	// 1. 게시글 상세보기 결과를 만들기 위해서 필요한 데이터를 읽어와야 한다.
	//   → 요청 파라미터 읽기(no)
	
	String no = request.getParameter("no");

	// 2. DB에서 입력값으로 받은 no에 해당하는 게시글 하나를 읽어와서
	// BoardDao를 이용해서
	BoardDao dao = new BoardDao();
	Board b = dao.getBoard(Integer.parseInt(no));
	// 3. 아래에 출력해서 응답하면 끝
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/board.css" type="text/css" rel="stylesheet">
</head>
<body>
	<table class="contentTable">
		<tr>
			<td colspan="4" class="boardTitle"><h2>글 내용 보기</h2></td>
		</tr>
		<tr>
			<td colspan="4">&nbsp;</td>
		</tr>
		<tr>
			<td class="contentTh">제&emsp;목</td>
			<td colspan="3" class="contentTd"><%= b.getTitle() %></td>
		</tr>
		<tr>
			<td class="contentTh">글쓴이</td>
			<td class="contentTd"><%= b.getWriter() %></td>
			<td class="contentTh">작성일</td>
			<td class="contentTd">
				<fmt:formatDate value="<%= b.getRegDate() %>" pattern="yyyy-MM-dd HH:mm:ss"/>
			</td>
		</tr>
		<tr>
			<td class="contentTh">비밀번호</td>
			<td class="contentTd"><input type="password" name="pass" id="pass"></td>
			<td class="contentTh">조회수</td>
			<td class="contentTd"><%= b.getReadCount() %></td>
		</tr>
		<tr>
			<td class="contentTh">파&emsp;일</td>
			<td colspan="3" class="contentTd">
				<c:if test='<%= b.getFile() == null || b.getFile().equals("") %>'>
					첨부파일 없음
				</c:if>			
				<c:if test='<%= b.getFile() != null && !b.getFile().equals("") %>'>
					<a href="../upload/<%= b.getFile() %>">파일 다운로드</a>
				</c:if>
			</td>
		</tr>
		<tr>
			<!-- 다음 td 태그는 띄어쓰면 안된다. 한줄에 다 써야 본문이 제대로 나온다. -->
			<td class="readContent" colspan="4" style="white-space: pre"><%= b.getContent() %></td>
		</tr>
		<tr>
			<td colspan="4">&nbsp;</td>
		</tr>
		<tr>
			<td colspan="4" class="tdSpan">
				<input type="button" id="detailUpdate" value="수정하기">&emsp;
				<input type="button" id="detailDelete" value="삭제하기">&emsp;
				<input type="button" value="목록보기" onclick='location.href="boardList.jsp"'>
				<!-- boardList.jsp를 따옴표로 감싸지 않으면 JS에서 .을 하위요소로 접근하라는 지시로 해석 -->
			</td>
		</tr>
	</table>
</body>
</html>