<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String k_id=(String)request.getAttribute("id");
	%>
	<h1>请勿重复报名！<%=request.getAttribute("id") %></h1>
	<a href="/tuimian/GokaoshengMain?k_id=<%=k_id%>">返回主页</a>
</body>
</html>