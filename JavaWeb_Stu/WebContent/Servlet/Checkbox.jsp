<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form  action="<%= request.getContextPath()%>/Servlet/CheckBox" method="post" target="_blank">
			<input type="checkbox" name="runoob" checked="checked" /> ss
			<input type="checkbox" name="google" /> guge
			<input type="checkbox" name="taobao" />taobao 
			<input type="submit" value="选择站点"/>
		</form>
</body>
</html>