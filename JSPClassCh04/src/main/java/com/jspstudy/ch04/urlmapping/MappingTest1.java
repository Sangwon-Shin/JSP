package com.jspstudy.ch04.urlmapping;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/* JSPStudyCh04/mapping1/test/ 아래로 들어오는
 * 모든 요청을 이 서블릿이 처리하겠다고 선언하는 애노테이션
 * */
@WebServlet(urlPatterns = "/mapping1/test/*")	// * 는 이 경로로 들어오는 모든 요청을 의미.
// 여기서는 context route. (컨텍스트 주소). 웹브라우저에서 / 는 site route.(웹애플리케이션 폴더 주소)
public class MappingTest1 extends HttpServlet {

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("	<head><title>MappingTest1</title></head>");
		out.println("	<body>");
		out.println("		MappingTest1");
		out.println("	</body");
		out.println("/html>");				
		out.close();		
	}
}
