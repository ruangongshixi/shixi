<%@page import="com.tuimian.domain.Activity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="。/lib/bootstrap/css/bootstrap.min.css" >
 <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">  
 <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
 <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>管理员主页</title>
</head>
<body>
	<%
		ArrayList activity=(ArrayList) request.getAttribute("activity"); 
	
	%>
	<div class="container">
	<div style="height:150px">
			<nav class="navbar navbar-fixed-top my-navbar" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse"
                        data-target="#example-navbar-collapse">
                    <span class="sr-only">切换导航</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/tuimian/Gohome">Home</a>
            </div>
            <div class="collapse navbar-collapse" id="example-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="/tuimian/AddActivity?type=1">添加活动</a></li>
                    <li><a href="/tuimian/Gomain">删除活动</a></li>
                    <li>
                        <a href="/tuimian/Gomain">资格审核</a>
                    </li>
                    <li>
                    	<a href="/tuimian/Tuichu">安全退出</a>
                    </li>
                </ul>
            </div>
        </div>
        
    </nav>
		</div>
	<div class="row">
	<div class="col-md-1"></div>
	<div class="col-md-10">
	<table class="table table-striped table-hover" >
		<caption>活动列表</caption>
		<tr><th>活动名称</th><th>开始时间</th><th>结束时间</th><th>联系人</th><th>联系方式</th><th>备注</th><th>操作</th></tr>
		<%for(int i=0;i<activity.size();i++){ 
			Activity ac=(Activity)activity.get(i);
			String id=ac.getId()+"";
		%>
		
		<tr>
			<td><%=ac.getName() %></td>
			<td><%=ac.getStart_time() %></td>
			<td><%=ac.getEnd_time() %></td>
			<td><%=ac.getHolder() %></td>
			<td><%=ac.getContact() %></td>
			<td><%=ac.getBeizhu() %></td>
			<td>
				<button type="button" class="btn btn-warning"><a href="/tuimian/Deleteactivity?id=<%=id %>" >删除</a></button>
				<button type="button" class="btn btn-info"><a href="/tuimian/Viewlist?id=<%=id%>">资格审查</a></button>
			</td>
		</tr>
		<%} %>
	</table>
	</div>
	<div class="col-md-1"></div>
	</div >
	<div class="">
	</div>
</body>
</html>