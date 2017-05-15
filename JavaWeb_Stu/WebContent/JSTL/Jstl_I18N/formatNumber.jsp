<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>数字格式化</h3>
	<c:set var="numb" value="120001.239"></c:set>
	<p>
		格式1
		<fmt:formatNumber value="${numb}" type="currency"></fmt:formatNumber>
	</p>
	<p>
		格式2 maxIntegerDigits整型数最大的位数3:
		<fmt:formatNumber value="${numb}" type="number" maxIntegerDigits="3"></fmt:formatNumber>
	</p>
	<p>
		格式3 maxFractionDigits小数点后最大的位数3:
		<fmt:formatNumber value="${numb}" type="number" maxFractionDigits="2"></fmt:formatNumber>
	</p>
	<p>
		格式4 是否对数字分组 默认FALSE:
		<fmt:formatNumber value="${numb}" type="number" groupingUsed="false"></fmt:formatNumber>
	</p>
	<p>对数字分组  true:三位数 一组  ：
		<fmt:formatNumber value="${numb}" type="number" groupingUsed="true"></fmt:formatNumber>
	</p>
	<p>
		格式5
		<fmt:formatNumber value="${numb}" type="percent" maxIntegerDigits="3" ></fmt:formatNumber>
	</p>
	<p>
		格式6
		<fmt:formatNumber value="${numb}" type="percent" maxFractionDigits="2"></fmt:formatNumber>
	</p>
	<p>
		格式7
		<fmt:formatNumber value="${numb}" type="number" pattern="###.####E0"></fmt:formatNumber>
	</p>
	<p>美元
	<fmt:setLocale value="en_US"/>
	<fmt:formatNumber value="${numb }" type="currency"></fmt:formatNumber>
	</p>


</body>
</html>