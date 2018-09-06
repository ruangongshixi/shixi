<%@page import="com.tuimian.domain.Status"%>
<%@page import="com.tuimian.domain.Activity"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>报名状态查询</title>
</head>
<body>
	<%
		String k_id=(String)request.getAttribute("k_id");
		ArrayList s=(ArrayList)request.getAttribute("s");
	%>
	<table border="1px" cellpadding="0px" cellspacing="0px">
		<caption>活动列表</caption>
		<tr><th>活动名称</th><th>状态</th></tr>
	<%
		for(int i=0;i<s.size();i++){
			Status s1=(Status)s.get(i);
	%>
		<tr>
			<td><%=s1.getActivityName() %></td>
			<td><%=s1.getStatus() %></td>
		</tr>
	
	<%} %>
	</table>
	<a href="/tuimian/GokaoshengMain?k_id=<%=k_id%>">返回主页</a>
</body>
</html>