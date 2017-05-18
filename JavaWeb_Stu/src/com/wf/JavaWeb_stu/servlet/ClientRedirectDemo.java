package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//实现服务器跳转
@WebServlet("/Servlet/ClientRedirectDemo")
public class ClientRedirectDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter  out= response.getWriter();
		request.getSession().setAttribute("name", "ss");
		request.setAttribute("info", "ws");
		response.sendRedirect("ClientRedirectDemo.jsp");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
