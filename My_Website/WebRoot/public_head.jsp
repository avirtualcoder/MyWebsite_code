<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公用顶部导航及用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/public_head.css">


  </head>
  
  <body>
   <div>
<h1 style="text-align:center;color:gray; margin-top:60px;font:30px 宋体">博观而约取，厚积而薄发</h1>
</div>

<div id="head_nav">
			<a href="" class="head_a">首页</a> 
			<a href="" class="head_a">大数据</a> 
			<a href="" class="head_a">机器学习</a> 
			<a href="" class="head_a">深度学习</a> 
			<a href="" class="head_a">模式识别</a> 
			<a href="" class="head_a">智能控制</a>
			<a href="" class="head_a">自然语言处理</a> 
			<a href="" class="head_a">数据爬虫</a>
			<a href="" class="head_a">数据挖掘</a>

		</div>
  </body>
</html>
