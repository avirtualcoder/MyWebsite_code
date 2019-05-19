<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>网站简介</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/common.css">
	

  </head>
  
  <body>
  <jsp:include page="public_head.jsp" flush="true"></jsp:include>
  <nav id="left_nav"> 
<ul id="left_ul">
  <li><a href="#">本站简介</a></li>
  <li><a href="#">学习资源</a> </li>
  <li><a href="#">成长路线</a></li>
  <li><a href="#">课程总结</a></li>
  <li><a href="#">面试心经</a></li>
</ul>
</nav>

<div id="content">
<h1 style="text-align:center;font:30px 宋体;font-weight: 700">本站初衷</h1>
<br>
<p style="font: 21px 宋体;font-weight: 700">
主要是为了总结自己学过的东西，让有志从事AI领域的人了解自己的成长历程供以参考。笔者的水平也只是一个普通的本科生，网站的文章皆是学校开设的课程和自己根据网上资源学习总结而来，如有疏漏和不正确之处，可以联系页面底部的邮箱加以修改。每个人对知识都有不一样的理解，更何况在人工智能这个新兴领域，争论更是不断，所以本站文章仅供参考，大家可以多探讨和参考多方面资料。
</p>
</div>
  <jsp:include page="public_bottom.jsp" flush="true"></jsp:include>
  </body>
</html>
