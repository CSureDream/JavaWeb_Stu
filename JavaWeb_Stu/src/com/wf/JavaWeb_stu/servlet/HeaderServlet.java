package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.bcel.internal.generic.DDIV;
import com.sun.org.apache.bcel.internal.generic.NEW;

/**
 * Servlet implementation class HeaderServlet
 */
@WebServlet("/Servlet/HeaderServlet")
public class HeaderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HeaderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		String strDate = dateFormat.format(new Date());
		out.print("<table><tr>");
		out.print("<td width =200><font size=3 color='#990000'>"+strDate+"</font></td>");
		out.print("<td width =200><font size=5 color='#990000'><cent>ABC有限公司</cent></font></td>");
		out.println("</tr></table>");
		out.println("<marquee><font size=3 color='#990000'>sukidau</font></marquee><hr>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
