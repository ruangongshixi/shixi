<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 新 Bootstrap 核心 CSS 文件 -->
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript" src="./js/test.js"></script>
<title>考生注册</title>
</head>
<body>
	<div class="container">
	<div style="height: 150px"></div>
	<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-6">
	<form action="/tuimian/Register" role="form" name="form1" onsubmit="return myCheck()">
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
	</div>
</body>
</html>