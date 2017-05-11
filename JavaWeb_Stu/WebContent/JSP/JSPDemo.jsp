
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!int i = 5;%>
	<%=i%>
	<p>当前时间</p>
	
	<br />
	<%
		Date today = new Date();
		int hours = today.getHours();
		int minutes = today.getMinutes();
		if (hours >= 0 && hours < 12) {
			out.println("欢迎访问，早上好ss");
		} else if (hours >= 12 && hours < 19) {
			out.println("欢迎访问，下午好ss");
		} else {
			out.println("欢迎访问，下午好ss");
		}
	%>
	<!-- 插入动作指令include -->
	<p align="center">新书展示</p>
	<hr>
	<table border="1" align="center">
		<tr>
			<td><jsp:include page="../HTML/NewBook1.html"flush="true"></jsp:include></td>
			<td><jsp:include page="../HTML/NewBook2.html"flush="true"></td>
		</tr>
		<tr>
			<td><jsp:include page="../HTML/NewBook3.html"flush="true"></jsp:include></td>
			<td><jsp:include page="../HTML/NewBook4.html"flush="true"></jsp:include></td>
		</tr>
	</table>
	
</body>
</html>