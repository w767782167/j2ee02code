<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'show.jsp' starting page</title>
    
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
  <!-- 获取MyJsp 表单传递过来的参数 -->
  <%
   String s1 = request.getParameter("r1");
   
   if(s1!=null)
   {
    out.println("一、2+3="+s1+" ");
    if(s1.equals("5"))
    {
        out.println("解答正确"); 
    }
    else
    {
       out.println("解答不正确"); 
    }
    
   }
   else
   {
       out.println("没有解题"); 
   }
 out.println("----------------------<br/>");
  String s2[] = request.getParameterValues("c1");
  
  if(s2!=null)
   {
    out.println("二、 下列哪些是偶数？");
    for(int i =0; i<s2.length;i++)
    {
       out.print(s2[i]+"  ");
    }
    if(s2.length ==2 && s2[0].equals("2")&&s2[1].equals("4"))
    {
        out.println("解答正确"); 
    }
    else
    {
       out.println("解答不正确"); 
    }
    
   }
   else
   {
       out.println("没有解题"); 
   }
    out.println("----------------------<br/>");
   String s3[] = request.getParameterValues("list");
  
  if(s3!=null)
   {
    out.println(" 三、下列哪些是动态网页?");
    for(int i =0; i<s3.length;i++)
    {
       out.print(s3[i]+"  ");
    }
    if(s3.length ==3 && s3[0].equals("asp")&&s3[1].equals("php")&&s3[2].equals("jsp"))
    {
        out.println("解答正确"); 
    }
    else
    {
       out.println("解答不正确"); 
    }
    
   }
   else
   {
       out.println("没有解题"); 
   }
  
  
  
   %>
 
   
  </body>
</html>
