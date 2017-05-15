<%@page import="org.apache.naming.java.javaURLContextFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="date" class="java.util.Date" />
	<fmt:formatDate value="${date}" />
	<br>
	<fmt:formatDate value="${date}" pattern="yyyy/MM/dd HH:mm:ss:sss" />
	<h3>日期格式化</h3>
	<c:set var="now" value="<%= new java.util.Date() %>" />
	<p>
		type="time"日期格式1:
		<fmt:formatDate value="${now }" type="time" />
	</p>
	<p>
		type="date"日期格式2:
		<fmt:formatDate value="${now }" type="date" />
	</p>
	<p>
		type="both"日期格式3:
		<fmt:formatDate value="${now }" type="both" />
	</p>
	<p>
		type="both" timeStyle="short" 日期格式4:
		<fmt:formatDate value="${now }" type="both" timeStyle="short" />
	</p>
	<p>
		type="both" dateStyle="medium"日期格式5:
		<fmt:formatDate value="${now }" type="both" dateStyle="medium" />
	</p>
	<p>
		type="both" dateStyle="long"日期格式6:
		<fmt:formatDate value="${now }" type="both" dateStyle="long" />
	</p>
	<p>
		pattern="yyyy/MM/dd HH:mm:ss:sss"日期格式7:
		<fmt:formatDate value="${now }" pattern="yyyy/MM/dd HH:mm:ss:sss" />
	</p>
	<p>
</body>
</html>