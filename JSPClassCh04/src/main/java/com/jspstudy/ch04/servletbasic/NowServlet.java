package com.jspstudy.ch04.servletbasic;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/time.do")	// time.do 로도 요청 가능.
public class NowServlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8"); 
		// response 객체에서 스트림 객체를 얻기 전에
		//컨텐트 타입 지정해줘야한다.
		PrintWriter out = response.getWriter();
		Calendar cal = Calendar.getInstance();
		out.println("<h2>현재 시간</h2>");
		out.print(cal.get(Calendar.YEAR) + "년 ");
		out.print((cal.get(Calendar.MONTH) + 1) + "월 ");
		out.print(cal.get(Calendar.DAY_OF_MONTH) + "일 ");
		out.print(cal.get(Calendar.HOUR_OF_DAY) + "시 ");
		out.print(cal.get(Calendar.MINUTE) + "분 ");
		out.print(cal.get(Calendar.SECOND) + "초 ");
		out.close();
	}
}
