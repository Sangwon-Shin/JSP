<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.sql.*, com.jspstudy.ch06.vo.*" %>  
<%@ page import="java.util.*" %>  
<%
	// 여기에 이렇게 직접 써주면 이 페이지에서 클릭해서 게시글에 들어가거나 하면 이런 DB 작업 코드가
	// 또 그 게시글 페이지에 포함돼야 한다. 중복이 많아지고 오류 발생 확률이 높아진다.
	// 그러므로 데이터 작업은 따로 클래스를 만들어서 한번만 작성하고 호출하는 식이어야 한다.
	// 오라클 사용자 정보, 접속드라이버 정보, URL
	String user = "hr";
	String pass = "hr";
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String select = "SELECT * FROM jspbbs";
	
	// 1. 드라이버 로딩
	Class.forName(driver);
	
	// 2. DriverManager를 이용해 db에 연결
	Connection conn = DriverManager.getConnection(url, user, pass);
	// 3. DB에 쿼리를 발행해주는 객체 Statement, PreparedStatement
	//Statement stmt = conn.createStatement();
	PreparedStatement pstmt = conn.prepareStatement(select);
	// 4. DB에 쿼리 발행
	// SELECT : executeQuery()
	// INSERT, UPDATE, DELETE : executeUpdate()
	ResultSet rs = pstmt.executeQuery();
	
	ArrayList<Board> boardList = new ArrayList<Board>();
	/*
	NO         NOT NULL NUMBER              
	TITLE      NOT NULL VARCHAR2(50 CHAR)   
	WRITER     NOT NULL VARCHAR2(20 CHAR)   
	CONTENT    NOT NULL VARCHAR2(1000 CHAR) 
	REG_DATE   NOT NULL TIMESTAMP(6)        
	READ_COUNT NOT NULL NUMBER(5)           
	PASS       NOT NULL VARCHAR2(20 CHAR)   
	FILE1               VARCHAR2(50 CHAR)   
	*/
	while(rs.next()){
		Board b = new Board();
		b.setNo(rs.getInt("no"));
		b.setTitle(rs.getString("title"));
		b.setWriter(rs.getString("writer"));
		b.setContent(rs.getString("content"));
		b.setRegDate(rs.getTimestamp("reg_date"));
		b.setReadCount(rs.getInt("read_count"));
		b.setFile(rs.getString("file1"));
		
		boardList.add(b);
	}
	// 5. DB 작업이 완료되면 접속 종료
	// DB 작업에서 사용한 객체를 취득한 역순으로 닫는다.
	// _jsp.class 에서 exception 처리가 돼 있어서 try catch 안해도 된다.
	if(rs != null) rs.close();
	if(pstmt != null) pstmt.close();	
	if(conn != null) conn.close();
	String title = "게시글 리스트";
	//pageContext.setAttribute("title", title);		
%>
<c:set var="title" value="<%= title %>" scope="page" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
table{
border: 1px solid blue;
border-collapse: collapse;
}
td {
border: 1px dotted blue;
padding: 5px 10px;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<h1>${ title }</h1>
	<table>
	<tr>
		<th>no</th>
		<th>제목</th>
		<th>작성자</th>
		<th>작성일</th>
		<th>조회수</th>
	</tr>
	<c:forEach var="board" items="<%= boardList %>">	
	<%-- <%= > 바깥 양쪽에 공백이 있으면 문자열로 처리돼서 반복 안됨 --%>
	<tr>
		<td>${ board.no }</td>
		<td><a href="boardDetail.jsp?no=${ board.no }">${ board.title }</a></td>
		<!-- 클릭해서 넘어가는건 GET 방식만 가능 -->
		<td>${ board.writer }</td>
		<td>${ board.regDate }</td>
		<td>${ board.readCount }</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>