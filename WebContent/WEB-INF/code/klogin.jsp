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
<title>考生登录</title>
</head>
<body>
	<div class="container">
	<div class="row" style="height:150px">
		
	</div>
	<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
	<% String error=request.getParameter("error"); %>
	<% if("zhuceshibai".equals(error)){ %>
		<h1>注册失败，请重新注册！</h1>
	<%} else if("loginerr".equals(error)){%>
		<h1>登录失败，请重新登录！</h1>
	<%} %>
	<form action="/tuimian/Loginp" role="form" name="form1" onsubmit="return myCheck()">
		<table class="table">
			<tr>
				<td>身份证号</td>
				<td><input type="text" name="id" class="form-control" placeholder="请输入身份证号"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="password" name="password"  class="form-control" placeholder="请输入密码"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><input type="reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a  href="/tuimian/Register?type=1">注册</a></td>
			</tr>
		</table>
		<input type="hidden" name="t" value="kaosheng">
	</form>
	</div>
	<div class="col-md-3"></div>
	</div>
	</div>
</body>
</html>