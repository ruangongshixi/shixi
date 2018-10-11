<%@page import="com.tuimian.domain.Activity"%>
<%@page import="java.util.ArrayList"%>
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
<title>考生主页</title>
</head>
<body>
	<div class="container">
	<%
		String k_id=(String)request.getAttribute("id");
	%>
	<div style="height:150px"><jsp:include page="/WEB-INF/code/ktop.jsp"></jsp:include></div>
	<div style="height: 200px"></div>
	<div class="row">
		<div class="col-md-3">
			<a href="/tuimian/Viewscore?k_id=<%=k_id %>" class="btn btn-info btn-lg">
				查看夏令营成绩
			</a>
		</div>
		<div class="col-md-3">
			<a href="/tuimian/Changeinfo?type=1&k_id=<%=k_id %>" class="btn btn-info btn-lg">
				修改个人信息
			</a>
		</div>
		<div class="col-md-3">
			<a href="/tuimian/ViewActivity?k_id=<%=k_id%>" class="btn btn-info btn-lg">
		          <span class="glyphicon glyphicon-search"></span> 查看夏令营
		    </a>
		</div>
		<div>
			<a href="/tuimian/Checkstatus?k_id=<%=k_id %>" class="btn btn-info btn-lg">
	          <span class="glyphicon glyphicon-eye-open"></span> 报名状态
	        </a>
		</div>
	</div>
	</div>
</body>
</html>