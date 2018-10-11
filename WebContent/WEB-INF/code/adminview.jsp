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
<title>查看</title>
</head>
<body>
	<%
		ArrayList activity=(ArrayList) request.getAttribute("activity"); 
	%>
	<div class="container">
	<div style="height:100px"></div>
	<table class="table table-striped table-hover">
		<caption>活动列表</caption>
		<tr><th>活动名称</th><th>操作</th></tr>
		<%for(int i=0;i<activity.size();i++){ 
			Activity ac=(Activity)activity.get(i);
			String id=ac.getId()+"";
		%>
		
		<tr>
			<td><%=ac.getName() %></td>
			<td>
				<button type="button" class="btn btn-success"><a href="/tuimian/Addscore?a_id=<%=id %>&type=2" >上传成绩</a></button>
			</td>
		</tr>
		<%} %>
	</table>
	<a href="/tuimian/Gomain">返回主页</a>
	</div>
</body>
</html>