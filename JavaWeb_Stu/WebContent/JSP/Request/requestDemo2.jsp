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
		request.setCharacterEncoding("GBK");
		String id = request.getParameter("id");
		String name = request.getParameter("uname");
		//接收复选框提交的参数
		String inst[] = request.getParameterValues("inst");
	%>
	<h3>
		编号：<%= id %></h3>
	<h3>
		姓名：<%= name %></h3>
	<%//判断复选框是否有内容
        if(inst!=null){
        %>
	<h3>
		兴趣：<%
		   for(int x=0;x<inst.length;x++){ 
		   %>
		<%= inst[x] %>
		<%
		}
		%>
	</h3>
	<%
        }
	%>
	
</body>
</html>