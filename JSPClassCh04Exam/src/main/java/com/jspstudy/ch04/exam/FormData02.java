package com.jspstudy.ch04.exam;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formData02")
public class FormData02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/*
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String phoneNum = request.getParameter("phoneNum1") + "-" 
							+ request.getParameter("phoneNum2") + "-"
							+ request.getParameter("phoneNum3");
		ArrayList<String> jobList = new ArrayList<String>(Arrays.asList(request.getParameterValues("job")));
		ArrayList<String> fieldList = new ArrayList<String>(Arrays.asList(request.getParameterValues("field")));
		String job = String.join(", ", jobList);
		String field = String.join(", ", fieldList);
		
		request.setAttribute("name", name);
		request.setAttribute("gender", gender);
		request.setAttribute("phoneNum", phoneNum);
		request.setAttribute("job", job);
		request.setAttribute("field", field);
		RequestDispatcher rd = request.getRequestDispatcher("/view/formDataView02.jsp");
		rd.forward(request, response);
	}

}
