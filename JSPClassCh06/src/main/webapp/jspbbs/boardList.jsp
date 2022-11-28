<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<%@ page import="com.jspstudy.ch06.vo.*, com.jspstudy.ch06.dao.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- formatter -->
<%
	// BoardList 요청을 처리하는 페이지
	// boardDao를 이용해서(의존해서) DB로부터 게시글 리스트를 읽어와 출력
	BoardDao dao = new BoardDao();
	ArrayList<Board> bList = dao.boardList();
	
	//pageContext.setAttribute("bList", bList); 대신에 cset을 쓰자.
%>
<c:set var="bList" value="<%= bList %>" scope="page"/>	<!-- xml 문법을 따라야 한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" href="../css/board.css" rel="stylesheet">
</head>
<body>
	<table class="listTable">
		<tr>
			<td class="boardTitle" colspan="5"><h2>게시글 리스트</h2></td>
		</tr>
		<tr>
			<td colspan="5">
				<form name="searchForm" id="searchForm" action="#">
					<select name="type">
						<option value="title">제목</option>
						<option value="writer">작성자</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="keyword">
					<input type="submit" name="검색">
				</form>
			</td>
		</tr>
		<tr>
			<td colspan="5" class="listWrite"><a href="writeForm.jsp">글쓰기</a></td>
		</tr>
		<tr>
			<th class="listThNo">NO</th>
			<th class="listThTitle">제목</th>
			<th class="listThWriter">작성자</th>
			<th class="listThRegDate">작성일</th>
			<th class="listThReadCount">조회수</th>
		</tr>
		<!-- 게시글이 있는 경우 -->
		<c:if test="${ not empty bList }">
			<c:forEach var="b" items="${ bList }">
				<tr>
				<!-- getter가 없으면 오류 발생 -->
					<td class="listTdNo">${ b.no }</td> 
					<td class="listTdTitle"><a href="boardDetail.jsp?no=${ b.no }">${ b.title }</a></td>
					<td class="listTdWriter">${ b.writer }</td>
					<td class="listTdRegDate">
						<fmt:formatDate value="${ b.regDate }" pattern="yyyy-MM-dd"/>
					</td>
					<td class="listTdReadCount">${ b.readCount }</td>
				</tr>
			</c:forEach>
		</c:if>
		<!-- 게시글이 없는 경우 -->
		<c:if test="${ empty bList }">
			<tr>
				<td colspan="5" class="listTdSpan">게시글이 존재하지 않습니다.</td>
			</tr>
		</c:if>
	</table>
</body>
</html>