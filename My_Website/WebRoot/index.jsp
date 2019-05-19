<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>铝合金的成长之路</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/index.css">
	
</head>
<body>
<jsp:include page="public_head.jsp" flush="true"></jsp:include>
<nav id="left_nav"> 
<ul id="left_ul">
  <li><a href="./jianjie.jsp">本站简介</a></li>
  <li><a href="#">学习资源</a> </li>
  <li><a href="#">成长路线</a></li>
  <li><a href="#">课程总结</a></li>
  <li><a href="#">面试心经</a></li>
</ul>
</nav>

<div id="content">
<h1>深度学习</h1>
<p>CNN为卷积神经网络，属于机器学习中的神经网络分支，特点在于特征自学习，多层特征提取出高级特征，训练相对于神经网络有参数少和性能优越等特点</p>
<br>
<br>
<h1>计算智能</h1>
<p>传统计算智能算法有三大类：神经网络，进化算法，模糊算法</p>
<br>
<br>
<h1>机器学习</h1>
<p>机器学习有k近邻算法，svm等等</p>
<br>
<br>
<h2>有待完善</h2>
</div>

 <jsp:include page="public_bottom.jsp" flush="true"></jsp:include>
</body>
</html>