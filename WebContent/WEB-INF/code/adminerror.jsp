<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员错误</title>
</head>
<body>
	<h1>错误：<%=request.getParameter("error") %></h1>
	<a href="/tuimian/Gomain">返回主页</a>
</body>
</html>