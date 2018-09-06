<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>考生注册</title>
</head>
<body>
	<form action="/tuimian/Register">
		<table border="1px" cellpadding="0px" cellspacing="0px">
			<tr>
				<td>身份证号</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>本科学校</td>
				<td><input type="text" name="college"></td>
			</tr>
			<tr>
				<td>专业</td>
				<td><input type="text" name="major"></td>
			</tr>
			<tr>
				<td>推荐老师姓名</td>
				<td><input type="text" name="teacher"></td>
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
		<input type="hidden" name="type" value="2">
	</form>
</body>
</html>