package com.jspstudy.ch04.formdata;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/formData01")
public class FormData01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name, id, pass, gender, nMail, aMail, iMail, job, memo;
		name = request.getParameter("");
		id = request.getParameter("id");
		pass = request.getParameter("pass");
		gender = request.getParameter("gender");
		nMail = request.getParameter("nMail");
		aMail = request.getParameter("aMail");
		iMail = request.getParameter("iMail");
		job = request.getParameter("job");
		memo = request.getParameter("memo");
		
		
		request.setAttribute("name", name);
		request.setAttribute("id", id);
		request.setAttribute("pass", pass);
		request.setAttribute("gender", gender);
		request.setAttribute("nMail", receiveMail(nMail));
		request.setAttribute("aMail", receiveMail(aMail));
		request.setAttribute("iMail", receiveMail(iMail));
		request.setAttribute("job", job);
		request.setAttribute("memo", memo);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/formDataView01.jsp");
		rd.forward(request, response);
	}
	
	private String receiveMail(String mail) {
		if(mail == null) {
			return "받지 않음";
		} else {
			return "받음";
		}
	}
}
