package com.jspstudy.ch04exam.requestmethod;

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
		
		request.setAttribute("firstNum", firstNum);
		request.setAttribute("secondNum", secondNum);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/resultGet.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("gender", gender);
		request.setAttribute("address", address);
		RequestDispatcher rd = request.getRequestDispatcher("/view/resultPost.jsp");
		rd.forward(request, response);
		
	}
}
