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
<title>管理员登录</title>
</head>
<body>
	<div class="container">
	<div class="row" style="height:150px">
		
	</div>
	<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
	<form action="/tuimian/Loginp?t=admin" role="form">
		<table class="table">
			<tr>
				<td>id</td>
				<td><input type="text" name="id" class="form-control" placeholder="请输入账号"></td>
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
		<input type="hidden" name="t" value="admin">
	</form>
	</div>
	</div>
	</div>
	
</body>
</html>