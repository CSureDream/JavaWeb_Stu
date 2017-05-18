package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//取得httpsession对象
import javax.servlet.http.HttpSession;

@WebServlet("/Servlet/HttpSessionDemoServlet")
public class HttpSessionDemoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
             	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	     response.setContentType("text/html;charset=UTF-8");
	     PrintWriter out= response.getWriter();
	     //取得httpsession 对象
	     HttpSession ses =request.getSession();
	     out.println("<HTML>");
	     out.println("<BODY>");
	     out.print("<H3>取得HttpSession实例</H3>");
	     out.println("<H3>session Id-->"+ses.getId()+"</H3>");
	     ses.setAttribute("useName", "ss");
	     out.println("<H3>useName 属性内容:"+ses.getAttribute("useName")+"</H3>");
	     
	     
	     out.println("</BODY>");
	     out.println("</HTML>");
	     
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
