<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="DataByLogin.jsp" style="display: flex; justify-content: center; align-items: center; height: 100vh; ">
		<table style="border: 2px solid black;">
			<tr>
			<td><h2>USERNAME:</h2></td>
			<td><input type="text" name="username" placeholder="username"></td>
			</tr>
			<tr>
			<td><h2>PASSWORD:</h2></td>
			<td><input type="password" name="password" placeholder="password"></td>
			</tr>
			<tr>
			<td><a href="Main.jsp"><input type="submit" value="LOGIN"></a></td>
			<td><a href="SignUp.jsp"><input type="submit" value="REGISTER"></a></td>
			</tr>
		</table>
	</form>
	
	<script type="SignOut.js"></script>
</body>
</html>