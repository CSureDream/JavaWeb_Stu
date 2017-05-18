package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet/ServerRedirectDemo")
public class ServerRedirectDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ServerRedirectDemo() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.getSession().setAttribute("name", "ss");
	    request.setAttribute("info", "wf");
	    //实例化requestDispatcher 对象，同时制定跳转路径
	    RequestDispatcher rd =request.getRequestDispatcher("ServerRedirectDemo.jsp");
	    rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
