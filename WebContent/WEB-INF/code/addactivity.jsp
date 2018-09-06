<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加活动信息</title>
</head>
<body>
	<form action="/tuimian/AddActivity">
		<table border="1px" cellpadding="0px" cellspacing="0px">
			<tr>
				<td>活动名称</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>开始时间(2018-9-5)</td>
				<td><input type="text" name="start_time"></td>
			</tr>
			<tr>
				<td>结束时间</td>
				<td><input type="text" name="end_time"></td>
			</tr>
			<tr>
				<td>联系人</td>
				<td><input type="text" name="holder"></td>
			</tr>
			<tr>
				<td>联系电话</td>
				<td><input type="text" name="contact"></td>
			</tr>
			<tr>
				<td>备注（不为空）</td>
				<td><input type="text" name="beizhu"></td>
			</tr>
			<tr>
				<td><input type="submit" value="提交"></td>
				<td><input type="reset" value="重置"></td>
			</tr>
		</table>
		<input type="hidden" name="type" value="2">
	</form>
</body>
</html>