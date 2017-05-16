package com.wf.JavaWeb_stu.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Servlet/CheckBox")
public class CheckBox extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public CheckBox() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html;Charset=UTF-8");
	PrintWriter out=response.getWriter();
	String title="读取复选框内容";
	String docType = "<!DOCTYPE html> \n";
	out.println(docType +
        "<html>\n" +
        "<head><title>" + title + "</title></head>\n" +
        "<body bgcolor=\"#f0f0f0\">\n" +
        "<h1 align=\"center\">" + title + "</h1>\n" +
        "<ul>\n" +
        "  <li><b>菜鸟按教程标识：</b>: "
        + request.getParameter("runoob") + "\n" +
        "  <li><b>Google 标识：</b>: "
        + request.getParameter("google") + "\n" +
        "  <li><b>淘宝标识：</b>: "
        + request.getParameter("taobao") + "\n" +
        "</ul>\n" +
        "</body></html>");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
