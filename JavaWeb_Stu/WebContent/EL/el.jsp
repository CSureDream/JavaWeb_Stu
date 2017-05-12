<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html" pageEncoding="GBK"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<p>${'${'}trueor true }</p>
	<p>${true or true}</p>
	<p>${10.5}</p>
	<h3>比较运算</h3>
	4&gt3; ${4>3}
	<br> 4&lt;3 ${4<3 }
	<br> 4&ge;3 ${4>=3 }
	<br> 4&le;3 ${4<=3}
	<br>
	<h3>空运算</h3>
	"$"{empty=""}${empty""}
	<br> "$"{empty ="sometext"}${empty" sometext"}
	<br>
	<hr>
	<%
		pageContext.setAttribute("num1", "20");
		pageContext.setAttribute("num2", "30");
	%>
	value of num1=${pageScope.num1}
	<br> value of num2=${pageScope.num2}
	<br> value of num3=
	<b>"$"{pageScope.num1}*"$"{pageScope.num2}</b> =
	<b>${pageScope.num1*pageScope.num2}</b>
	<hr>
	<p>pageContext获取浏览器信息</p>
	<span>ip地址</span> ${pageContext.request.remoteAddr}
	<br>
	<span>session Id</span> ${pageContext.session.id}
	<hr>
	<span>header对象</span>
	<br>
	<span>header</span> ${header['User-Agent']}
	<br>
	<span>header</span> ${headerValues}
	<br>


	<p>接收参数</p>
	<%
		request.setCharacterEncoding("GBK");
	%>
	<span> 方法1request 姓名：</span><%=request.getParameter("uname")%>
	<span>方法2'$'{param.uname } 姓名：</span>${param.uname }
	<hr>
	<p>获取一组参数</p>
	<span>/${paramValues.inst}的到错误的结果 ：</span> ${paramValues.inst}
	<br> ${paramValues["inst"][0] }
	<br> ${paramValues["inst"][1] }
	<br> ${paramValues["inst"][2] }
	<br> ${paramValues["inst"][3] }
	<br> ${paramValues["inst"][4] }
	<br>
	<hr>
	<p>获取cookies</p>
	<%
		Cookie c1 = new Cookie("ss", "sm");
		c1.setMaxAge(120);
		response.addCookie(c1);
	%>
	<span>1 request=</span><%= request.getParameter("ss") %>
	<%-- <%=request.getCookies()%> --%><br>
	<span>2 c1.getName=</span>
	<%=c1.getName()%><br>
	<span>3 c1.getValue=</span>
	<%=c1.getValue()%><br>
	<span>4'$'{cookie.ss.name}=</span> ${cookie.ss.name }
	<br>
	<span>5'$'{cookie.ss.Value}=</span> ${cookie.ss.value }
	<br>

	<h3>list</h3>
	<%
		List<String> list = new ArrayList();
		list.add("ss");
		list.add("sk");
		list.add("sd");
		list.add("su");
		pageContext.setAttribute("list", list);//将list 存到page的属性中
	%>
	<span>'$'{list}= </span> ${list}
	<br>
	<span>'$'{list[1]}= </span> ${list[1]}
	<br>
	<span>'$'{list}[3]= </span> ${list[3]}
	<br>
	<h3>map</h3>
	<%
		Map map = new HashMap();
		map.put("1", "ss");
		map.put("2", "sk");
		map.put("3", "sd");
		map.put("4", "su");
		pageContext.setAttribute("map", map);//将map 存到page的属性中
	%>
	<span>'$'{map}= </span> ${map}
	<br>
	<span>'$'{map[key1]}:</span> ${map["1"]}
	<br>
	<span>'$'{map[key4]}:</span> ${map["4"]}
	<br>
	<span>'$'{map.get(3)}:</span> ${map.get("3")}
	<br>
	<hr>
	<h3>El表达式页面跳转</h3><span>eclipse 报错但不影响结果</span>
	<%--  <span>方法1pageContext.forward</span>
	${pageContext.forward("NewFile2.html")} --%>
 
 	<%-- <span>方法2response.sendRedirect</span>	
     ${pageContext.response.setHeader("refresh","1;URL=NewFile.html")}  --%>

	<%-- <span>方法3{pageContext.response.sendRedirect</span>
	${pageContext.response.sendRedirect("NewFile.html")} --%>








</body>
</html>