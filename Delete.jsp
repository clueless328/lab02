<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/css03.css" rel="stylesheet" type="text/css"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int Sno=Integer.parseInt(request.getParameter("text1"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmanagement","root","123");
Statement sta=con.createStatement();
request.setCharacterEncoding("UTF-8");


String sql="delete from Student where Sno='"+Sno+"'";
sta.execute(sql);
sta.close();
con.close();
%>
<h2>删除成功！</h2>
<a href="index.html">返回主页</a>
</body>
</html>