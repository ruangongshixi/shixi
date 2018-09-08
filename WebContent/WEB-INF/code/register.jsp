<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="。/lib/bootstrap/css/bootstrap.min.css" >
 <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
 <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
 <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>考生注册</title>
</head>
<body>
	<div class="container">
	<form action="/tuimian/Register" role="form">
		<table class="table" border="0px">
			<tr>
				<td >身份证号</td>
				<td><input type="text" name="id" class="form-control" placeholder="请输入身份证号"></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name" class="form-control" placeholder="请输入姓名"></td>
			</tr>
			<tr>
				<td>本科学校</td>
				<td><input type="text" name="college" class="form-control" placeholder="请输入本科学校"></td>
			</tr>
			<tr>
				<td>专业</td>
				<td><input type="text" name="major" class="form-control" placeholder="请输入专业"></td>
			</tr>
			<tr>
				<td>推荐老师姓名</td>
				<td><input type="text" name="teacher" class="form-control" placeholder="请输入推荐老师姓名"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="password" class="form-control" placeholder="请输入密码"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
		<input type="hidden" name="type" value="2">
	</form>
	</div>
</body>
</html>