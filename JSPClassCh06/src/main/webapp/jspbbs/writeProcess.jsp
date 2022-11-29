<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.jspstudy.ch06.vo.*, com.jspstudy.ch06.dao.*" %>    
<%
	// 0. post 방식 요청에 대한 문자셋 처리 필요.
	request.setCharacterEncoding("UTF-8");
	// 1. 게시글 쓰기 폼에서 전송된 데이터를 받아와야 함.
	// 요청을 하면서 서버로 보내오는 입력값(요청 파라미터)
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String pass = request.getParameter("pass");
	String content = request.getParameter("content");

	// 2. Board 객체로 만들어서 DAO에 넘겨준다. - BoardDao 사용
	Board b = new Board();
	b.setTitle(title);
	b.setWriter(writer);
	b.setPass(pass);
	b.setContent(content);
	BoardDao dao = new BoardDao();
	dao.insertBoard(b);
	// 3. 특정 주소로 이동시켜야 함 - Redirect
	// Redirect 시키지 않으면 같은 동작을 반복하는 문제가 발생
	response.sendRedirect("/JSPClassCh06/jspbbs/boardList.jsp");
	
%>