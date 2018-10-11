<%@page import="com.tuimian.domain.Kaosheng"%>
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
<title>更改信息</title>
</head>
<body>
	<%
		 Kaosheng k=(Kaosheng)request.getAttribute("k");
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-6">
				<table>
					<form action="/tuimian/Changeinfo" method="get">
						<tr><td><label>id</label></td><td><input readonly="readonly"  type="text" name="id" value="<%=k.getId()%>"></td></tr>
						<tr><td><label>name</label></td><td><input type="text" name="name" value="<%=k.getName()%>"></td>
						<tr><td><label>college</label></td><td><input type="text" name="college" value="<%=k.getCollege()%>"></td></tr>
						<tr><td><label>major</label></td><td><input type="text" name="major" value="<%=k.getMajor()%>"></td></tr>
						<tr><td><label>teacher</label></td><td><input type="text" name="teacher" value="<%=k.getTeacher()%>"></td></tr>
						<tr><td><label>password</label></td><td><input type="text" name="password" value="<%=k.getPassword()%>"></td></tr>
						<input type="hidden" name="type" value="2"><br>
						<tr><td><input type="submit" value="提交"> </td></tr>
					</form>
				</table>
			</div>
		</div>
		<a href="/tuimian/GokaoshengMain?k_id=<%=k.getId()%>">返回主页</a>
	</div>
</body>
</html>