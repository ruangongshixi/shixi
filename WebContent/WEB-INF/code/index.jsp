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
<title>推免系统主页</title>
<style type="text/css">
	body{
		background-color: White;
	}
	.img{
		width: 60px;
		height: 60px;
	}
	.img1{
		width:1200px;
		height:600px;
	}
</style>
</head>
<body>
	<div class="container">
	<div class="row" >
	<div class="col-md-1"></div>
	<div class="col-md-9"><img alt="logo" src="./image/logo.jpg" class="img">
	<font style="font-size: 60px;font-family: KaiTi">推免系统</font></div>
	<div class="dropdown col-md-2" >
	<button type="button" class="btn dropdown-toggle" id="dropdownMenu1" 
			data-toggle="dropdown">
		登录方式
		<span class="caret"></span>
	</button>
	<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
		<li role="presentation">
			<a role="menuitem" tabindex="-1" href="/tuimian/Derect?type=kaosheng">考生入口</a>
		</li>
		<li role="presentation">
			<a role="menuitem" tabindex="-1" href="/tuimian/Derect?type=admin">管理员入口</a>
		</li>
	</ul>
	</div>
</div>
	<!--------------------------------------------------轮播开始-------------------------------------------->
   <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
       <!-- ol指示器  ol标签与ul标签不同 ol为是有序列表 ul为是无序列表 -->
       <ol class="carousel-indicators">
             <!-- 指示器 -->
           <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
           <li data-target="#carousel-example-generic" data-slide-to="1"></li>
           <li data-target="#carousel-example-generic" data-slide-to="2"></li>
           <li data-target="#carousel-example-generic" data-slide-to="3"></li>
       </ol>

       <!-- 包装的轮播图片-->
       <div class="carousel-inner" role="listbox" >
           <!--图片-->
           <div class="item active" style="height: 600px">
               <img src="./image/chunfen.jpg" alt="风景1" class="img1">
               <div class="carousel-caption">
                   <!--h4中的内容显示到图片上面，-->
                   <h4>真正的才智是刚毅的志向。 —— 拿破仑</h4>
               </div>
           </div>
           <div class="item" style="height: 600px">
               <img src="./image/lixia.jpg" alt="风景2" class="img1">
               <div class="carousel-caption">
                   <h4>志向不过是记忆的奴隶，生气勃勃地降生，但却很难成长。 —— 莎士比亚</h4>
               </div>
           </div>
           <div class="item" style="height: 600px">
               <img src="./image/qiufen.jpg" alt="风景3" class="img1">
               <div class="carousel-caption">
                   <h4>志向和热爱是伟大行为的双翼。 —— 歌德</h4>
               </div>
           </div>
           <div class="item" style="height: 600px">
               <img src="./image/dongzhi.jpg" alt="风景4" class="img1">
               <div class="carousel-caption">
                   <h4>生活有度，人生添寿。 —— 书摘</h4>
               </div>
           </div>
       </div>

       <!-- Controls -->
       <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
           <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
           <span class="sr-only">Previous</span>
       </a>
       <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
           <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
           <span class="sr-only">Next</span>
       </a>
   </div>
   <!--------------------------------------------------轮播结束-------------------------------------------->
</div>
</body>
</html>