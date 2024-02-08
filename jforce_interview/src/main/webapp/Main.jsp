<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.time.*"%>
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
<section style="display: flex; justify-content: center; align-items: center; height: 100vh;">
<div style="border: 2px solid black; text-align: center; width:20%; height: 40%">
	<% 
	DateTimeFormatter dateFormatter=DateTimeFormatter.ofPattern("dd-mm-yyyy");
	DateTimeFormatter timeFormatter=DateTimeFormatter.ofPattern("hh:mm:ss");
	
	LocalDateTime date=LocalDateTime.now();
	out.print(dateFormatter.format(date));
	
	out.print("<br>");
	
	LocalDateTime time=LocalDateTime.now();
	out.print(timeFormatter.format(time));
	
	out.print("<br>");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Mysql@123");
		PreparedStatement pstmt=con.prepareStatement("insert into jforce.signin values(?,?)");
		pstmt.setString(1,dateFormatter.format(date));
		pstmt.setString(2,timeFormatter.format(time));
		pstmt.execute();
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
	
	
	<a href="" ><input type="submit" value="SIGN IN" style="margin-top: 100px"></a>
	
	<br>
	
	<a href="SignInTime.jsp" ><input type="submit" value="VIEW REPORT" style="margin-top: 100px"></a>
</div>
<div style="border: 2px solid black; text-align: center; width:20%; height: 40%; padding-left: 10px;">
	<% 
	DateTimeFormatter dateFormatter1=DateTimeFormatter.ofPattern("dd-mm-yyyy");
	DateTimeFormatter timeFormatter1=DateTimeFormatter.ofPattern("hh:mm:ss");
	
	LocalDateTime date1=LocalDateTime.now();
	out.print(dateFormatter.format(date));
	
	out.print("<br>");
	
	LocalDateTime time1=LocalDateTime.now();
	out.print(timeFormatter.format(time));
	
	out.print("<br>");
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=Mysql@123");
		PreparedStatement pstmt=con.prepareStatement("insert into jforce.signout values(?,?)");
		pstmt.setString(1,dateFormatter.format(date));
		pstmt.setString(2,timeFormatter.format(time));
		pstmt.execute();
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
	
	
	<a href="" ><input type="submit" value="SIGN OUT" style="margin-top: 100px"></a>
	
	<br>
	
	<a href="SignOutTime.jsp" ><input type="submit" value="VIEW REPORT" style="margin-top: 100px"></a>
</div>
</section>
</body>
</html>