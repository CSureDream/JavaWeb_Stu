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
          //  ����  cookie
          Cookie c1=new Cookie("ss","suki"); //�����µ�cookie���� name��value
          Cookie c2=new Cookie("sm","dau");
           c1.setMaxAge(60);                //����cookie�ı���ʱ��60s 
           c2.setMaxAge(60);                //��ʹ�ر������60s ���ڵ�¼cookIE��Ȼ��Ч
          response.addCookie(c1);          //��cookie��ӵ��ͻ���
          response.addCookie(c2);
          %>
          <hr>
          <%
          //ȡ��cookie
          Cookie c[]=request.getCookies();  //ȡ��ȫ��cookie
          for(int i=0;i<c.length;i++){       //ѭ��ȡ��ÿһ��
          %>
          <h3> <%=c[i].getName() %> -> <%=c[i].getValue() %></h3>
       
          <%
          }
          %>
</body>
</html>