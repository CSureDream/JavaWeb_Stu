<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>读取所有参数</title>
</head>
<body>
	<form action="<%= request.getContextPath() %>/Servlet/ReadParams" method="post" target="_blank">
		<input type="checkbox" name="math" checked="checked" />数学 <input
			type="checkbox" name="phy" />物理 <input type="checkbox" name="chem"
			checked="checked" />化学<br> <input type="submit" value="选择学科" />

	</form>

</body>
</html>