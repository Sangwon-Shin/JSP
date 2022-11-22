package com.jspstudy.ch02.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Ex02_1")
public class Ex02_1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int sum = 0;
		for(int i = 0; i < 50; i++) {
			sum += 2 * (i + 1);
		}
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>sum</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("	<h2> 2 + 4 + 6 + ... + 100 = " + sum);
		out.println("	</h2>");
		out.println("</body>");
		out.println("</html> ");
	}

}
