<%@ page language="java" contentType="text/html"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
          <%
          //  设置  cookie
          Cookie c1=new Cookie("ss","suki"); //定义新的cookie对象 name和value
          Cookie c2=new Cookie("sm","dau");
           c1.setMaxAge(60);                //设置cookie的保存时间60s 
           c2.setMaxAge(60);                //即使关闭浏览器60s 内在登录cookIE依然有效
          response.addCookie(c1);          //将cookie添加到客户端
          response.addCookie(c2);
          %>
          <hr>
          <%
          //取出cookie
          Cookie c[]=request.getCookies();  //取出全部cookie
          for(int i=0;i<c.length;i++){       //循环取出每一个
          %>
          <h3> <%=c[i].getName() %> -> <%=c[i].getValue() %></h3>
       
          <%
          }
          %>
</body>
</html>