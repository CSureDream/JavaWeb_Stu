package com.wf.JavaWeb_stu.servletDispatcher;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

/**
 * Servlet implementation class EnterDemo
 */
@WebServlet("/ServletDispatcher/EnterDemo")
public class EnterDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EnterDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("userName");
		String pwd =request.getParameter("passWord");
		
		if ("ss".equals(name)&&"123".equals(pwd)) {
			//保存用户名在session中
			request.getSession().setAttribute("userId", name);
			
			ServletContext context = getServletContext();
			RequestDispatcher rd = context.getRequestDispatcher("/Servlet/welcome.jsp");
			rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("/ServletDispatcher/LoginDemo");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
