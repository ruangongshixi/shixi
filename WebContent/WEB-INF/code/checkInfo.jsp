<%@page import="com.tuimian.domain.Checkinfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生资格审核</title>
</head>
<body>
	<%
		String a_id=request.getParameter("a_id");
		ArrayList c=(ArrayList)request.getAttribute("Checkinfo");
	%>
	<table border="1px" cellpadding="0px" cellspacing="0px">
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
				<a href="/tuimian/Changestatus?a_id=<%=a_id %>&k_id=<%=ac.getId() %>&status=pass" >通过</a>
				<a href="/tuimian/Changestatus?a_id=<%=a_id %>&k_id=<%=ac.getId() %>&status=fail">不通过</a>
			</td>
		</tr>
		<%} %>
	</table>
	<a href="/tuimian/Gomain">返回主页</a>
</body>
</html>