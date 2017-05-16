package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet/MyLoginServletDemo")
public class MyLoginServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MyLoginServletDemo() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;Charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD>用servlet测试get/post方法</HEAD>");
		out.println("<BODY>");
		out.println("<H2>调用了doGet方法</H2>");
		out.println("<H2>用户输入的信息如下</H2>");
		String useName = request.getParameter("useName");
		if (useName == null || useName == "") {

			useName = "未输入";
		}
		String passWord = request.getParameter("passWord");
		if (passWord == null || passWord == "") {
			passWord = "未输入";
		}
		out.println("<H2>用户名:" + useName + "</H2>");
		out.println("<H2>密码:" + passWord + "</H2>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html;Charset=GBK");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD>用servlet测试get/post方法</HEAD>");
		out.println("<BODY>");
		out.println("<H2>调用了doPost方法</H2>");
		out.println("<H2>用户输入的信息如下</H2>");
		String useName = request.getParameter("useName");
		if (useName == null || useName == "") {

			useName = "未输入";
		}
		String passWord = request.getParameter("passWord");
		if (passWord == null || passWord == "") {
			passWord = "未输入";
		}
		out.println("<H2>用户名:" + useName + "</H2>");
		out.println("<H2>密码:" + passWord + "</H2>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}

}
