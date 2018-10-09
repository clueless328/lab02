<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/css03.css" rel="stylesheet" type="text/css"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmanagement","root","123");
	Statement state=con.createStatement();
	request.setCharacterEncoding("UTF-8");
	int text1=Integer.parseInt(request.getParameter("text1"));
	String text2=request.getParameter("text2");
	String text3=request.getParameter("text3");
	String text4=request.getParameter("text4");
	String text5=request.getParameter("text5");
	
	String sql="insert into Student values('"+text1+"','"+text2+"','"+text3+"','"+text4+"','"+text5+"')";
	state.execute(sql);
	state.close();
	con.close();
%>
<h2>添加成功！</h2>
<a href="index.html">返回主页</a>
</body>
</html>