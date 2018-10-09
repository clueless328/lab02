<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>find</title>
<link href="css/css03.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<h2>学生的信息如下：</h2>
<%
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmanagement","root","123");
	Statement sta=con.createStatement();
	String sql="select * from Student";
	ResultSet rs=sta.executeQuery(sql);
	while(rs.next()){
		for(int i=1;i<=5;i++){
			out.print(rs.getString(i)+" ");
		}
		%> <p/> <%
	}
	rs.close();
	sta.close();
	con.close();
%>
<a href="index.html">返回主页</a>
</body>
</html>