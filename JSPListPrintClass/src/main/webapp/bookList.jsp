<%-- JSP 페이지에서 스크립틀릿과 표현식을 이용해 도서 리스트 출력하기 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.jspstudy.ch03.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	font-size: 12px;
}

#book_list {
	width: 600px;
	margin: 0 auto;
}

h2 {
	font-size: 2em;
	text-align: center;
}

table {
	border-top: 2px solid #3A96D6;
	margin: 0px auto;
}

#image {
	padding-right: 20px;
}

#bookTitle {
	font-size: 14px;
	font-weight: bold;
	width: 350px;
}

#tdBottom {
	border-bottom: 1px dotted gray;
}

#lastBottom {
	border-bottom: 2px dotted #3A96D6;
}

.empty_cell {
	font-size: 6px;
}
</style>
<title>스크립틀릿과 표현식을 이용해 도서 리스트 출력</title>
</head>
<body>
	<%
	ArrayList<Book> arrBook = (ArrayList<Book>) request.getAttribute("arrBook");
	%>
	<div id="book_list">
		<h2>도서 리스트</h2>
		<table>
			<%
			for (int i = 0; i < arrBook.size(); i++) {
				Book buk = arrBook.get(i);
			%>

			<tr>
				<td colspan="2" class="empty_cell">&nbsp;
				<td>
			</tr>
			<tr>
				<td id="image" rowspan="4"><img
					src="./images/<%=buk.getImg()%>" /></td>
				<td id="bookTitle"><%=buk.getTitle()%></td>
			</tr>
			<tr>
				<td><%=buk.getAuthor()%></td>
			</tr>
			<tr>
				<td><%=buk.getPrice()%></td>
			</tr>
			<tr>
				<td><%=buk.getDelivery()%></td>
			</tr>
			<tr>
				<td id="tdBottom" class="empty_cell" colspan="2">&nbsp;
				<td>
			</tr>
			<%
			}
			%>
			<tr>
			<td colspan="2" style="text-align: center"><br/>
				<a href="bookListOnly.jsp">도서 리스트</a>&nbsp;&nbsp;&nbsp;
				<a href="lottoNumWon.jsp">로또 당첨 번호 리스트</a>
			</td>
		</tr>
		</table>
	</div>
</body>
</html>