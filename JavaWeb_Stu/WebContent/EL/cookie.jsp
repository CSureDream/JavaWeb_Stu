<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>获取cookies</p>
	<%
		Cookie c1 = new Cookie("ss", "sm");
		c1.setMaxAge(120);
		response.addCookie(c1);
	%>
	<span>1 request= 循环输出</span>
	<%=request.getCookies()%><br>
	<% Cookie c[]=request.getCookies();
	     for (int i=0; i<c.length;i++){
	  	%>
	    	<%= i%><%=c[i].getName()%>  <%=c[i].getValue() %>
	    	<% 
	     }
	         	
	  	%>
	  	
	<span>2 c1.getName=</span>
	<%=c1.getName()%><br>
	<span>3 c1.getValue=</span>
	<%=c1.getValue()%><br>
	<span>4'$'{cookie.ss.name}=</span> ${cookie.ss.name }
	<br>
	<span>5'$'{cookie.ss.Value}=</span> ${cookie.ss.value }
	<br>

</body>
</html>