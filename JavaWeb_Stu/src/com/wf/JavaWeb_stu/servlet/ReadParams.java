package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet/ReadParams")
public class ReadParams extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;GBK");
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<TITLE>读取所有的表单数据</TITLE>");
		out.println("<BODY>");
		out.println("<TABLE>");
		out.println("<TH>参数名</TH><TH>参数值</TH>");
		Enumeration paramNames = request.getParameterNames();

		while (paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();
			out.print("<tr><td>" + paramName + "</td></tr>");
			String[] paramValues = request.getParameterValues(paramName);
			// 读取单个值得数据
			if (paramValues.length == 1) {
				String paramValue = paramValues[0];
				if (paramValues.length == 0) {
					out.println("<td>没有值</td>>");
				} else
					out.println("<td>" + paramValue + "</td>");
			} else {
				// 读取多个值得数据
				out.println("<td><ul>");
				for (int i = 0; i < paramValues.length; i++) {
					out.print("<li>"+paramValues[i]);
				}
             out.println("</ul></td>");
			}

		}

		out.println("</TABLE>");
		out.println("</BODY>");
		out.println("</HTML>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
