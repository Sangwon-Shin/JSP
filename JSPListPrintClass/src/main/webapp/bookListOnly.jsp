<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.jspstudy.ch03.vo.*" %>
<%
	ArrayList<Book> arrBook = new ArrayList<Book>();

	arrBook.add(new Book("javawebprogramming.jpg", "[도서]프로젝트로 배우는 자바 웹 프로그래밍",
			"황희정 저 | 한빛아카데미 | 2014년 01월",
			"30,000원 --> 24,000원(20%할인) | 포인트 2,400원(10%지급)",
			"도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,980"
			));
	arrBook.add(new Book("jsp&servlet.jpg", "[도서]뇌를 자극하는 JSP & Servlet",
			"김윤명 저 | 한빛미디어 | 2010년 12월",
			"30,000원 --> 27,000원(10%할인) | 포인트 2,700원(10%지급)",
			"도착 예상일 : 지금 주문하면 내일 도착예정 | 판매지수 : 1,023"
			));
	arrBook.add(new Book("headfirstjsp.jpg", "[도서]Head First Servlet & JSP",
			"케이시 시에라 등저/김종호 역 | 한빛미디어 | 2009년 02월",
			"32,000원 --> 25,600원(20%할인) | 포인트 2,560원(10%지급)",
			"도착 예상일 : 지금 주문하면 오늘 도착예정 | 판매지수 : 1,011"
			));
	arrBook.add(new Book("jsp2.3webprogramming.jpg", "[도서]최범균의 JSP2.3 웹프로그래밍",
			"최범균 저 | 가메출판사 | 2013년 02월",
			"25,000원 --> 22,500원(10%할인) | 포인트 2,250원(10%지급)",
			"도착 예상일 : 지금 주문하면 모레 도착예정 | 판매지수 : 2,012"
			));
	arrBook.add(new Book("jsp&servlet_oracle&eclipse.jpg", "[도서]백견불여일타 JSP&Servlet : Oracle&Eclipse",
			"성윤정 저 | 로드북 | 2014년 07월",
			"27,000원 --> 24,300원(10%할인) | 포인트 2,430원(10%지급)",
			"도착 예상일 : 지금 주문하면 내일 도착예정 | 판매지수 : 1,095"
			));
			
	request.setAttribute("arrBook", arrBook);
	pageContext.forward("bookList.jsp");
%>