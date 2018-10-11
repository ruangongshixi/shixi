<%@page import="com.tuimian.domain.Adminscore"%>
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
<title>添加成绩</title>
</head>
<body>
	<%
		ArrayList a=(ArrayList) request.getAttribute("a"); 
	
	%>
	<div class="container">
		<div style="height:150px">
			
		</div>
		<div class="row">
			<div class="col-md-1"></div>
			<div class="col-md-10">
					<table class="table table-striped table-hover" >
						<caption>学生列表</caption>
						<tr><th>id</th><th>学生姓名</th><th>学生成绩</th><th>添加成绩</th></tr>
						<%for(int i=0;i<a.size();i++){ 
							Adminscore ac=(Adminscore)a.get(i);
							String id=ac.getK_id()+"";
						%>
						
						<tr>
							<td><%=ac.getK_id() %></td>
							<td><%=ac.getName() %></td>
							<td><%=ac.getScore() %></td>
							<td>
								<button type="button" class="btn btn-success" >
									<a href="/tuimian/Adminaddscore?a_id=<%=ac.getA_id()%>&k_id=<%=ac.getK_id()%>&type=1"> <span class="glyphicon glyphicon-plus"></span></a></button>
							</td>
						</tr>
						<%} %>
					</table>
					<a href="/tuimian/Gomain">返回主页</a>
			</div>
			<div class="col-md-1"></div>
		</div >
	</div>
</body>
</html>