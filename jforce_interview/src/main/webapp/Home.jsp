<%@page import="java.time.format.DateTimeFormatter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Report</title>
</head>
<body>
		<%
		DateTimeFormatter dateFormatter=DateTimeFormatter.ofPattern("dd-mm-yyyy");
		DateTimeFormatter timeFormatter=DateTimeFormatter.ofPattern("hh:mm:ss");
		
		LocalDateTime date=LocalDateTime.now();
		out.print(dateFormatter.format(date));
		
		out.print("<br>");
		
		LocalDateTime time=LocalDateTime.now();
		out.print("sign in: "+timeFormatter.format(time));
		%>
</body>
</html>