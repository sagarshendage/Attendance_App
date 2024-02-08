
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
		
		PreparedStatement pstmt=con.prepareStatement("select * from jforce.attendance where username=? AND password=?");
		pstmt.setString(1,username);
		pstmt.setString(2,password);
		
		ResultSet rs=pstmt.executeQuery();
		if(username.equals("admin") && password.equals("admin")){
			RequestDispatcher rd=request.getRequestDispatcher("Admin.jsp");
			rd.forward(request, response);
		}
		else if(rs.next()){
			RequestDispatcher rd=request.getRequestDispatcher("Main.jsp");
			rd.forward(request, response);
			out.print(rs.getInt(1)+" "+rs.getInt(2)+" "+rs.getInt(3)+" "+rs.getInt(4));
		}
		else{
			out.print("<h1>Data is not present<h1>");
			RequestDispatcher rd=request.getRequestDispatcher("SignUp.jsp");
			rd.forward(request, response);
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
</body>
</html>