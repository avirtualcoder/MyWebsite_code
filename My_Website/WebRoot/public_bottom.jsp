<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>公用底部站长信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/public_bottom.css">
	

  </head>
  
  <body>
   <div id="bottom">
<hr>
<div id="bottom_describe"> 
<p style="font: 20px 宋体;color: white">
<br>
站长邮箱：1102761928@qq.com
<br>
git地址: https://github.com/avirtualcoder
</p>

</div>
 </div>
  </body>
</html>
