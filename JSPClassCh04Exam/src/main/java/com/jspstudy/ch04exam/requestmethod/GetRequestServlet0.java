package com.jspstudy.ch04exam.requestmethod;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/requestInfoByGet", "/requestInfoByPost"}) 
// urlPatterns = 는 쓰지 않아도 되지만 다른 옵션들이 들어갈 때 필요해지기 때문에 미리 써두는게 좋다.
public class GetRequestServlet0 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String address = request.getParameter("address");
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("address", address);
		RequestDispatcher rd = request.getRequestDispatcher("/view/resultMyInfo.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String address = request.getParameter("address");
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		request.setAttribute("address", address);
		RequestDispatcher rd = request.getRequestDispatcher("/view/resultMyInfo.jsp");
		rd.forward(request, response);
		
	}
}
