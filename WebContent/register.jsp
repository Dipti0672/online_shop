<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navBar.jsp"></jsp:include>
	<br>	<br>	<br>	<br>

	<form action="UserServlet" method="post">

		<center>
				<h1>Registration</h1>
			
		</center>
		<br>

		<table  style="width: 40%" cellpadding="15" cellspacing="10" border="3" align="center">
			<tr>
				<td><b>Name</b></td>
				<td><input type="text" name="name">
			</tr>
			<tr>
				<td><b>Contact</b></td>
				<td><input type="text" name="contact">
			</tr>
			<tr>
				<td><b>Email</b></td>
				<td><input type="text" name="email">
			</tr>
			<tr>
				<td><b>Address</b></td>
				<td><input type="text" name="address">
			</tr>
			<tr>
				<td><b>Password</b></td>
				<td><input type="text" name="pass">
			</tr>
			<tr>

				<td colspan="2" align="center"><input type="submit"
					value="Save"> <input type="reset" value="Reset"></td>

			</tr>

		</table>
	</form>
</body>
</html>