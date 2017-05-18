package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet/LifeCycleServlet")
public class LifeCycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public LifeCycleServlet() {
        super();
    }

	public void init() throws ServletException {
		
		System.out.println("1、servlet 初始化");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;GBK");
		PrintWriter out = response.getWriter();
		out.println("2、servlet 服务");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	public void destroy() {
		System.out.println("3、servlet 销毁");
	}

}
