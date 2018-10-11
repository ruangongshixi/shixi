<%@page import="com.tuimian.domain.Checkinfo"%>
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
 <script type="text/javascript" src="./js/test.js"></script>
<title>学生资格审核</title>
</head>
<body>
	<%
		String a_id=request.getParameter("a_id");
		ArrayList c=(ArrayList)request.getAttribute("Checkinfo");
	%>
	<div class="container">
	<table class="table table-striped table-hover" id="mytable">
		<caption>申请列表</caption>
		<tr><th>身份证号</th><th>考生姓名</th><th>学校</th><th>专业</th><th>推荐老师</th><th>申请状态</th><th>审核结果</th></tr>
		<%for(int i=0;i<c.size();i++){ 
			Checkinfo ac=(Checkinfo)c.get(i);
		%>
		
		<tr>
			<td><%=ac.getId() %></td>
			<td><%=ac.getName() %></td>
			<td><%=ac.getColloge() %></td>
			<td><%=ac.getMajor() %></td>
			<td><%=ac.getTeacher() %></td>
			<td><%=ac.getStatus() %></td>
			<td>
				<button type="button" class="btn btn-success"><a href="/tuimian/Changestatus?a_id=<%=a_id %>&k_id=<%=ac.getId() %>&status=pass" >通过</a></button>
				<button type="button" class="btn btn-warning"><a href="/tuimian/Changestatus?a_id=<%=a_id %>&k_id=<%=ac.getId() %>&status=fail">不通过</a></button>
			</td>
		</tr>
		<%} %>
	</table>
	<script>
			checkTable();
		</script>
	<a href="/tuimian/Gomain">返回主页</a>
	</div>
</body>
</html>