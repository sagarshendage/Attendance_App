<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
	<form action="SaveSignUP.jsp" style="display: flex; justify-content: center; align-items: center; height: 100vh; ">
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
			<td><h2>EMAIL ID:</h2></td>
			<td><input type="email" name="email" placeholder="email"></td>
			</tr>
			<tr>
			<td><h2>PHONE NO:</h2></td>
			<td><input type="number" name="phno" placeholder="phone number"></td>
			</tr>
			<tr>
			<td></td>
			<td><input type="submit" value="REGISTER"></td>
			</tr>
		</table>
	</form>
</body>
</html>