<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生登录</title>
</head>
<body>
	<% String error=request.getParameter("error"); %>
	<% if("zhuceshibai".equals(error)){ %>
		<h1>注册失败，请重新注册！</h1>
	<%} else if("loginerr".equals(error)){%>
		<h1>登录失败，请重新登录！</h1>
	<%} %>
	<form action="/tuimian/Loginp">
		<table>
			<tr>
				<td>身份证号</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
		<input type="hidden" name="t" value="kaosheng">
	</form>
	<a href="/tuimian/Register?type=1">注册</a>
</body>
</html>