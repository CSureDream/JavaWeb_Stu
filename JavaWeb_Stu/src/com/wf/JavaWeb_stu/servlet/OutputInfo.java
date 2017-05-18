package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet/OutputInfo")
public class OutputInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public OutputInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     response.setContentType("text/html;charSet=UTF-8");
	PrintWriter out=response.getWriter();
	out.print("<HTML>");
	out.print("<HEAD><TITLE>输出报头有关信息</TITLE></HEAD>");
	out.print("<BODY>");
	//获取请求头信息，返回枚举类型
	Enumeration headers =request.getHeaderNames();
	while (headers.hasMoreElements()) {
		String name = (String) headers.nextElement();
		String value=request.getHeader(name);
		out.println("<H3>"+name+":"+value +"</H3>");
	}
	out.print("<H3>客户端IP地址:"+request.getRemoteAddr() +"</H3>");
	out.print("<H3>客户端的端口号:"+request.getRemotePort()+"</H3>");
	out.print("<H3>服务器的IP地址:"+request.getLocalAddr()+"</H3>");
	out.print("<H3>服务器的端口号:"+request.getLocalPort()+"</H3>");
	out.println("</BODY>");
	out.println("</HTML>");
	out.close();
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
