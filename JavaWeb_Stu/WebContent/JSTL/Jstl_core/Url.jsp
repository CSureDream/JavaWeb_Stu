<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>     
	<a href="<c:url value="login.jsp"/>">
	 这个链接通过  标签生成login.jsp。
	</a><br><hr>
	<a href="<c:url value="http://www.runoob.com"/>">
	 这个链接通过 &lt;c:url&gt; 标签生成。
	</a><hr>
	 <h3>带参数的URL</h3>
	<c:url var="myurl" value="login.jsp">
	<c:param name="name" value="runoob"></c:param>
	<c:param name="url" value="www.baidu.com"></c:param>
	</c:url>
	 myurl=  <c:out value="${myurl}"></c:out> 
	 <br>
	将myurl 加入到超链接
	<a href="${myurl}"> myurl</a>
	

</body>
</html>