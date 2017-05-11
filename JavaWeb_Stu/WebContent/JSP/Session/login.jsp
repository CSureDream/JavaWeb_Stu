<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="login.jsp" method="post">
		账号：<input type="text" name="uname">
		 密码：<input type="password"name="psd"> 
		<input name="submit" type="submit" value="submit">
		<input name="rest" type="reset" value="rest">
	</form>
	<%
		String name = request.getParameter("uname");
		String passWord = request.getParameter("psd");
		if (null != name && null != passWord && "ss".equals(name) && passWord.equals("123")) {
			response.setHeader("refresh", "2;url=logSuccess.jsp");//定时跳转
			session.setAttribute("userId", name); //将用户名保存到session中
	%>
	 <h3>success 2s 后 跳转</h3>
	  <h3>如果没有跳转点击<a href="logSuccess.jsp" ></a>这里</a></h3>
	<%
		}else{
			%>
			<h3>账号或密码错误</h3>
			<% 
		}
	%>
</body>
</html>