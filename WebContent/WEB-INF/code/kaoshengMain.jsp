<%@page import="com.tuimian.domain.Activity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生主页</title>
</head>
<body>
	<%
		String k_id=(String)request.getAttribute("id");
	%>
	<h1>欢迎登陆，<%=request.getAttribute("id") %>!</h1>
	<a href="/tuimian/ViewActivity?k_id=<%=k_id%>">查看夏令活动</a>
	<a href="/tuimian/checkstatus?k_id=<%=k_id %>">查看报名状态</a>
</body>
</html>