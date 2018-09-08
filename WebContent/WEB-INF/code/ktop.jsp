<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row" style="font-size: 20px;font-family: KaiTi">
	<div class="col-md-8"><font style="font-size: 40px;font-family: KaiTi">考生界面</font></div>
	<%String k_id=(String)request.getAttribute("id");%>
	<div  class="col-md-4">
		欢迎登陆！<%=k_id %>
		<a href="/tuimian/Tuichu">安全退出</a>
	</div>
	</div>
</body>
</html>