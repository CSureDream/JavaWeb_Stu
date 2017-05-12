<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="student" class="com.wf.JavaWeb_stu.Student.Student"
		scope="page"></jsp:useBean>
	<c:catch var="error">
		<c:set var="count" value="${param.c+1}" scope="page"></c:set>
	删除前count值<c:out value="${count}"></c:out>
		<br>
		<c:remove var="count" scope="page" />
	删除后count值<c:out value="${count}"></c:out>
		<br>
	</c:catch>
	<c:set target="${student}" property="name" value="ss"></c:set>
	<c:out value="${student.name}"></c:out>
	<br>
	<c:out value="${error}"></c:out>
	<h3>条件 标签库</h3>
	<p>if 标签库</p>
	9<8:
	<c:if test="${9<8}" var="ag1" scope="page"></c:if>
	<c:out value="${ag1 }"></c:out>
	<br>
	<c:if test="${9>8}" var="ag2" scope="page">
	   标签体：9>8
	</c:if>
	<c:out value="${ag2 }"></c:out>

	<form method="post">
		请输入百分之成绩: <input type="text" name="score"> <input
			type="submit" value="提交" />&nbsp;&nbsp; <input type="reset"
			value="重置 " />
	</form>
	<c:set var="color" value="red" />
	<c:set var="n" value="${param.score+0}" />
	<!--  +0 是为了实现数据类型的转换 -->
	<c:out value="${n}"></c:out>
	<c:if test="${n>=60.0}">
		<c:set var="color" value="blue" />
	</c:if>
	<p>choose 标签库</p>
	<font color="${color}" size="6"> <c:choose>
			<c:when test="${n>=90.0 }">
		你的成绩优秀
		</c:when>
			<c:when test="${n>=80.0&&n<90.0 }">
		你的成绩优秀
		</c:when>
			<c:when test="${n>=70.0&&n<80.0}">
		你的成绩优秀
		</c:when>
			<c:when test="${n>=60.0&&n<70.0 }">
		你的成绩优秀
		</c:when>
			<c:otherwise>
		不及格
		</c:otherwise>
		</c:choose>
	</font>
	<h3>forEach</h3>
	<%
		String[] books = { "JavaWeb设计", "操作系统", "Java语言程序设计", "C语言程序设计" };
		request.setAttribute("book", books);
	%>
	书名列表 :
	<br>
	<c:forEach var="bookname" items="${book}">
		${bookname}<br>
	</c:forEach>
	显示从10到15的整数值：
	<c:forEach var="k" begin="10" end="15" step="1">
    ${k} &nbsp;
    </c:forEach>
	<h4>使用指定的分隔符 分割字符串</h4>
	<%
		String address = "Ss,k:d!u,ss";
		request.setAttribute("address", address);
	%>
	<c:forTokens var="addr" items="${address}" delims=",;!" varStatus="status">
     ${status.count}、${addr}<br>
	</c:forTokens>
	
	
	
	
</body>
</html>