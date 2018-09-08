<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
<link rel="stylesheet" href="WebContent/WEB-INF/lib/css/top.css"> 
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>添加活动信息</title>
<style type="text/css">
	.top
</style>
</head>
<body>
	<div class="container" >
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
		<div class="col-md-3">
			
		</div>
		<div class="col-md-6">
	<form action="/tuimian/AddActivity" role="form">
		<table class="table">
			<tr>
				<td>活动名称</td>
				<td><input type="text" name="name" class="form-control" placeholder="活动名称"></td>
			</tr>
			<tr>
				<td>开始时间(2018-9-5)</td>
				<td><input type="text" name="start_time" class="form-control" placeholder="开始时间"></td>
			</tr>
			<tr>
				<td>结束时间</td>
				<td><input type="text" name="end_time" class="form-control" placeholder="结束时间"></td>
			</tr>
			<tr>
				<td>联系人</td>
				<td><input type="text" name="holder" class="form-control" placeholder="联系人"></td>
			</tr>
			<tr>
				<td>联系电话</td>
				<td><input type="text" name="contact" class="form-control" placeholder="联系电话"></td>
			</tr>
			<tr>
				<td>备注（不为空）</td>
				<td><input type="text" name="beizhu" class="form-control" placeholder="备注"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
		<input type="hidden" name="type" value="2">
	</form>
	</div>
	<div class="col-md-3">
			
		</div>
	</div>
	</div>
</body>
</html>