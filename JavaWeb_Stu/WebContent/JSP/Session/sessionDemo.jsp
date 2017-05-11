<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
     <%
     String id=session.getId();  //取得 系统自动为session的分配的id
     %>
     <h3> SESSION ID:<%= id %></h3>
     <h3> SESSION ID长度:<%= id.length() %></h3>
</body>
</html>