<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bean.*"%>

<jsp:useBean id="book" class="bean.BookBean" scope="page">
	<!-- 方法1 -->
	<%-- <jsp:setProperty property="*" name="book"  /> --%>

	 <!-- 方法2 --> 
 <jsp:setProperty property="bookName" name="book"/>
 <jsp:setProperty property="bookNum" name="book"/>
 <%-- <!-- 方法3 -->
 <jsp:setProperty property="bookNum" />
 <jsp:setProperty property="bookNum" />
 --%>
</jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>图书订购清单</p>
	<hr>
	<span>名字</span><jsp:getProperty property="bookName" name="book" /><br>
	<span>数量</span><jsp:getProperty property="bookNum" name="book" />
	<hr>
	<span>方式2</span>
	<span>名字</span>
	<%=book.getBookName()%><br>
	<span>数量</span>
	<%= book.getBookNum() %><br>
	<p>使用EL表达式</p>
	<p> 书名${book.bookName}</p><span>数量${book.bookNum}</span>
	<p>el运算</p>
	   "$"{book.bookNum+10}=${book.bookNum+10}<br>
	   "$"{book.bookNum+book.bookNum}=${book.bookNum+book.bookNum}<br>
	   
	   
</body>
</html>