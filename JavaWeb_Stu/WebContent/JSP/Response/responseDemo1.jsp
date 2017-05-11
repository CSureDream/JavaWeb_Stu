<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
 <!-- 定时刷新headname -->
          <%  int count=0;
          %>
          <%
          response.setHeader("refresh", "1");
          %>
          <h3>已经访问了  <%=count++ %>次</h3>
          <%-- <p>定时刷新并跳转</p>
          <%
          response.setHeader("refresh", "10;URL=hello.html");
          %> --%>
          <% 
          response.sendRedirect("hello.html"); //页面跳转
          %>
</body>
</html>