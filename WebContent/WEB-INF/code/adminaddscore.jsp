<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
 
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
 
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>添加分数</title>
</head>
<body>
	<div class="container">
	<div class="row" style="height:150px">
		
	</div>
	<div class="row">
	<div class="col-md-3"></div>
	<div class="col-md-6">
	<form action="/tuimian/Adminaddscore" role="form" name="form1">
		<table class="table">
			<tr>
				<td>分数</td>
				<td><input type="text" name="score" class="form-control" placeholder="请输入学生成绩"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><input type="reset" value="重置">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
		<input type="hidden" name="type" value="2">
		<input type="hidden" name="a_id" value="<%=request.getAttribute("a_id")%>">
		<input type="hidden" name="k_id" value="<%=request.getAttribute("k_id")%>">
	</form>
	<a href="/tuimian/Gomain">返回主页</a>
	</div>
	<div class="col-md-3"></div>
	</div>
	</div>
</body>
</html>