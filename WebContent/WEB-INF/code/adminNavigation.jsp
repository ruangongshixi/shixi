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
	<style type="text/css">
        html, body {width:100%;height:100%;} /*非常重要的样式让背景图片100%适应整个屏幕*/
        .bg {display: table;width: 100%;height: 100%;padding: 100px 0;text-align: center;color: #fff;background: url(./image/index.jpg) no-repeat bottom center;background-color: #000;background-size: cover;}
        .my-navbar {padding:20px 0;transition: background 0.5s ease-in-out, padding 0.5s ease-in-out;}
        .my-navbar a{background:transparent !important;color:#fff !important}
        .my-navbar a:hover {color:#45bcf9 !important;background:transparent;outline:0}
        .my-navbar a {transition: color 0.5s ease-in-out;}/*-webkit-transition ;-moz-transition*/
        .top-nav {padding:0;background:#000;}
        button.navbar-toggle {background-color:#fbfbfb;}/*整个背景都是transparent透明的，会看不到，所以再次覆盖一下*/
        button.navbar-toggle > span.icon-bar {background-color:#dedede}
    </style>
<title>管理员导航</title>
</head>
<body>
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
                    	<a href="/tuimian/Addscore?type=1">上传分数</a>
                    </li>
                    <li>
                    	<a href="/tuimian/Tuichu">安全退出</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
     <div class="bg"></div>
    <br /><br /><br /><br /><br /><br /><br /></p>
    <script>
        $(window).scroll(function () {
            if ($(".navbar").offset().top > 50) {$(".navbar-fixed-top").addClass("top-nav");
            }else {$(".navbar-fixed-top").removeClass("top-nav");}
        })</script>
</body>
</html>