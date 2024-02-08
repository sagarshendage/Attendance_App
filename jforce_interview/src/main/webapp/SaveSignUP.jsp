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
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	String emailId=request.getParameter("email");
	Long phoneNo=Long.parseLong(request.getParameter("phno"));
	
	PreparedStatement pstmt=con.prepareStatement("insert into jforce.attendance values(?,?,?,?)");
	pstmt.setString(1,username);
	pstmt.setString(2,password);
	pstmt.setString(3,emailId);
	pstmt.setLong(4,phoneNo);
	
	pstmt.execute();
	
	RequestDispatcher rd=request.getRequestDispatcher("Main.jsp");
	rd.forward(request, response);
	
	
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
	
	%>
</body>
</html>