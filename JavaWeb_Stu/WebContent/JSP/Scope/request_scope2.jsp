<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body><%
		//从page属性范围中取出属性，并执行向下转型操作
		String userName = (String) request.getAttribute("name");
		int userAge = (int) request.getAttribute("age");
	%>
	<p>name</p> <%= userName %>
	 <p>age</p><%= userAge %> 
	 

</body>
</html>