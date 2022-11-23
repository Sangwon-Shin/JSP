package com.jspstudy.ch04.requestmethod;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/getRequest", "/postRequest"}) 
// urlPatterns = 는 쓰지 않아도 되지만 다른 옵션들이 들어갈 때 필요해지기 때문에 미리 써두는게 좋다.
public class GetRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int firstNum = 0;
		int secondNum = 0;
		
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		
		firstNum = Integer.parseInt(num1);
		secondNum = Integer.parseInt(num2);
		
		/*
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h2>GET 방식 요청 처리</h2>");
		out.println("첫 번째 입력 값: " + num1 + "<br>");
		out.println("두 번째 입력 값: " + num2 + "<br>");
		out.println("두 수를 곱한 값: " + firstNum * secondNum + "<br>");
		
		out.close();
		*/
		
		request.setAttribute("firstNum", firstNum);
		request.setAttribute("secondNum", secondNum);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/resultGet.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		boolean isLogin = false;
		
		if(id.equals("admin") && pass.equals("1234")) {
			isLogin = true;
		}
		/*
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<h2>POST 방식 요청 처리</h2>");
		out.println((isLogin ? "로그인 성공" : "로그인 실패") + "<br>");
		out.println("입력된 아이디: " + id + ", 비밀번호: " + pass);
		*/
		request.setAttribute("id", id);
		request.setAttribute("pass", pass);
		request.setAttribute("isLogin", isLogin);
		RequestDispatcher rd = request.getRequestDispatcher("/view/resultPost.jsp");
		rd.forward(request, response);
			
		
	}
}
