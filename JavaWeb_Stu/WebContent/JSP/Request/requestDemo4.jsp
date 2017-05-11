<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>这个有点问题</title>
</head>
<body>
	<%
		request.setCharacterEncoding("GBK");
	%>
	<table border="1" align="center">
		<tr>
			<td>参数名称</td>
			<td>参数内容</td>
		</tr>
		<%
			//接收全部请求参数的名称
			Enumeration enu = request.getParameterNames();
			while (enu.hasMoreElements()) {
				String paramName = (String)enu.nextElement();
		%>
		<tr>
			<td><%=paramName%></td>
			<td>
				<%
					if (paramName.startsWith("**")) {//判断是否是以**开头的select 的参数
							String paramValue[] = request.getParameterValues(paramName);
							for (int i = 0; i < paramValue.length; i++) {
				%> <%=paramValue[i]%> <%
 	} 
 		} else {
 			String paramValue = request.getParameter(paramName);
 %> <%=paramValue%> <%
 	}
 %>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>