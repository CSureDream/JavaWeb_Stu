<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>����е�����</title>
</head>
<body>
	<%
		request.setCharacterEncoding("GBK");
	%>
	<table border="1" align="center">
		<tr>
			<td>��������</td>
			<td>��������</td>
		</tr>
		<%
			//����ȫ���������������
			Enumeration enu = request.getParameterNames();
			while (enu.hasMoreElements()) {
				String paramName = (String)enu.nextElement();
		%>
		<tr>
			<td><%=paramName%></td>
			<td>
				<%
					if (paramName.startsWith("**")) {//�ж��Ƿ�����**��ͷ��select �Ĳ���
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