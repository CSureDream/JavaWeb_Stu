<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 设置application的属性范围，使用超链接依然有效
		//但新开浏览器是无效
		application.setAttribute("name", "ss");
	    application.setAttribute("age", 20);
	%>
         <a href="applicationScope2.jsp">使用超链接</a>
</body>
</html>