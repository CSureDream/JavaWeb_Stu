package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/Servlet/Initparameter" }, initParams = {
		@WebInitParam(name = "institute", value = "职业技术学院"), @WebInitParam(name = "major", value = "java技术"),
		@WebInitParam(name = "count", value = "1000") })
public class Initparameter extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String myInstitute = null;
	private String myMajor = null;
	private int count = 0;

	public Initparameter() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		myInstitute = config.getInitParameter("institute");
		if (myInstitute == null)
			myInstitute = "";
		myMajor = config.getInitParameter("major");
		if (myMajor == null)
			myMajor = "";
		String strCount = config.getInitParameter("count");
		try {
			count = Integer.parseInt(strCount);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charSet=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD>");
		out.println("<title>" + "获取初始化参数" + "</title>");
		out.println("</HEAD>");
		out.println("<BODY>");
		out.println("<H3>所在院校:" + myInstitute + "</H3>");
		out.println("<H3>所学专业:" + myMajor + "</H3>");
		count++;
		out.println("<H3>此Servlet的访问次数" + count + "</H3>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
