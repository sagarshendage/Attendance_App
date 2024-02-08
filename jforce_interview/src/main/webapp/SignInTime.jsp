<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.*" %>
    <%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Mysql@123");
		
		PreparedStatement pstmt=con.prepareStatement("select * from jforce.signin");
		
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()){
			String date=rs.getString("date");
			String time=rs.getString("time");
			out.print(date+" "+"Sign In: "+time);
			out.print("<br>");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
</body>
</html>