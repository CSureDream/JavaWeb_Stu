package com.wf.JavaWeb_stu.servletDispatcher;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginDemo
 */
@WebServlet("/ServletDispatcher/LoginDemo")
public class LoginDemo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginDemo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>LoginPage</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<form method=\"post\" action=\"EnterDemo\">");
		
		out.println("<table>");
		out.println("<tr>");
		out.println("<td>请输入用户名</td>");
		out.println("<td><input type=text name=userName></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td>请输入密码</td>");
		out.println("<td><input type=password name=passWord></td>");
		out.println("</tr>");
		out.println("<tr>");
		out.println("<td><input type=submit value=登录></td>");
		out.println("<td><input type=reset value=重填></td>");
		out.println("</tr>");
		out.println("</table>");
		out.println("</form>");
		out.println("<body>");
		out.println("</html>");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
