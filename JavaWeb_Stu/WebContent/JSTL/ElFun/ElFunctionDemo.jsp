<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
      <%
      String[] video={"电影","电视剧","动画片","纪录片"};
      request.setAttribute("video", video);
      %>
      大写转小写:I YI XI TIE SU KI DA U;
      ${fn:toLowerCase("I YI XI TIE SU KI DA U")}<br>
      去长度I YI XI TIE SU KI DA U的长度为:
      ${fn:length("I YI XI TIE SU KI DA U") }<br>
      video的长度为${fn:length(video) }<br>
      video的值连城字符串 :${fn:join(video,"、")}<br>
      
</body>
</html>