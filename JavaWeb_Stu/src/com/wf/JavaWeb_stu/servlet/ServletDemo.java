package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet/ServletDemo")
public class ServletDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
		public ServletDemo() {
		super();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;Charset=GBK");
		//response.getWriter().append("Served at:").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<BODY>");
		out.println("<H2>我们正在学习servlet</H2>");
		out.println("<H3>时间：" + new Date() + "</H3>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}
}
