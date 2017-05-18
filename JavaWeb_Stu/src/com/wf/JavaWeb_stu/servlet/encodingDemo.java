package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet/encodingDemo")
public class encodingDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public encodingDemo() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		out.print("<HTML>");
		out.print("<HEAD><TITLE>解决中文乱码问题</TITLE></HEAD>");
		out.print("<BODY>");
		out.print("<H3>调用了doget方法</H3>");
		out.print("用户输入信息");
		
		 String info =request.getParameter("information");
		 out.println("<H3>"+info+"</H3>");
		 String newinfo =new String(info.getBytes("iso8859_1"),"UTF-8");
		 out.println("<H3>(info.getBytes(iso8859_1)UTF-8):"+newinfo+"</H3>");
		 
		out.print("</BODY>");
		out.print("</HTML>");
		out.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		out.print("<HTML>");
		out.print("<HEAD><TITLE>解决中文乱码问题</TITLE></HEAD>");
		out.print("<BODY>");
		out.print("<H3>调用了dopostt方法</H3>");
		out.print("用户输入信息");
		
		request.setCharacterEncoding("UTF-8");
		String info=request.getParameter("information");
		 out.println("<H3>"+info+"</H3>");
		out.print("</BODY>");
		out.print("</HTML>");
		out.close();
	}

}
