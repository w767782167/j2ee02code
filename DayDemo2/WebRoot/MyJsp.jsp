<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- C标签 JSTL库 -->
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MyJsp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
          <p>网上答题</p>
   <form action="show.jsp" method="post">
    一、2+3=？ <br/>
  <!-- 单选按钮 -->
    <input type="radio" name="r1" value="2"> 2<br/>
    <input type="radio" name="r1" value="3"> 3<br/>
    <input type="radio" name="r1" value="4" checked="checked"> 4<br/>
    <input type="radio" name="r1" value="5"> 5<br/>
    
   二、 下列哪些是偶数？<br/>
   <!-- 列表框 --> 
   <input type="checkbox" name="c1" value="2">2<br/>
   <input type="checkbox" name="c1" value="3">3<br/>
   <input type="checkbox" name="c1" value="4">4<br/>
   <input type="checkbox" name="c1" value="5">5<br/>
   三、下列哪些是动态网页?<br/>
   <!-- 下拉列表-->
   <select size="4" name="list"  multiple="multiple">
      <option value="asp">asp</option>
      <option value="php">php</option>
      <option value="jsp">jsp</option>
      <option value="html">html</option>
   </select>
   <br/>
   <input type="submit" value="提交">
   </form>
  </body>
</html>
