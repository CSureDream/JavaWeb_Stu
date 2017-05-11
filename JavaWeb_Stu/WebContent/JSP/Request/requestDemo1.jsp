<%@ page language="java" contentType="text/html"
	pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	//设置编码方式 防止乱码 
		request.setCharacterEncoding("GBK");
		//接收表单提交的数据
		String content = request.getParameter("info");
	%>
	<h2><%=content%></h2>
</body>
</html>