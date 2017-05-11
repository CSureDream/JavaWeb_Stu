<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		// 设置request的属性范围，只在当前页面期作用
		//使用超链接时无效

		request.setAttribute("name", "ss");
		request.setAttribute("age", 20);
	%>
	<%-- <jsp:forward page="request_scope2.jsp"></jsp:forward> --%>
	 <a href="request_scope2.jsp">使用超链接时无效</a>

</body>
</html>