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
		request.setCharacterEncoding("GBK");
		String id = request.getParameter("id");
		String name = request.getParameter("uname");
		//���ո�ѡ���ύ�Ĳ���
		String inst[] = request.getParameterValues("inst");
	%>
	<h3>
		��ţ�<%= id %></h3>
	<h3>
		������<%= name %></h3>
	<%//�жϸ�ѡ���Ƿ�������
        if(inst!=null){
        %>
	<h3>
		��Ȥ��<%
		   for(int x=0;x<inst.length;x++){ 
		   %>
		<%= inst[x] %>
		<%
		}
		%>
	</h3>
	<%
        }
	%>
	
</body>
</html>