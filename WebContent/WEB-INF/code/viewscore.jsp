<%@page import="com.tuimian.domain.Score"%>
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
<title>成绩查看</title>
</head>
<body>
	<div class="container">
		<div style="height:100px"></div>
		<%
			String k_id=(String)request.getParameter("k_id");
			ArrayList s=(ArrayList)request.getAttribute("s");
		%>
		<table class="table table-striped table-hover">
			<caption>活动列表</caption>
			<tr><th>活动名称</th><th>成绩</th></tr>
		<%
			for(int i=0;i<s.size();i++){
				Score s1=(Score)s.get(i);
		%>
			<tr>
				<td><%=s1.getName() %></td>
				<td><%=s1.getScore() %></td>
			</tr>
		
		<%} %>
		</table>
		<a href="/tuimian/GokaoshengMain?k_id=<%=k_id%>">返回主页</a>
	</div>
</body>
</html>