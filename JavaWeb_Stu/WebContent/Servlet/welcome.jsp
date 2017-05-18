<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcom</title>
</head>
<body>
  <% 
  session.getAttribute("userId");
  %>欢迎您
  <h3> ${userId }  欢迎您</h3> 
  <a href="<%=request.getContextPath() %>/ServletDispatcher/sessionInvalidate">注销</a>
</body>
</html>