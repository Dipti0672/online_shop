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
	<br>
	<br>
	<br>
	<br>


	<form action="LoginServlet" method="post">

		<table style="width: 30%" cellpadding="10" cellspacing="10" border="1"
			align="center" bgcolor="#F0FFF0">

			<tr>
				<td><b>UserName</b></td>

				<td><input type="text" name="uname"
					style="border-color: #212121;"></td>
			</tr>

			<tr>
				<td><b>Password</b></td>

				<td><input type="password" name="pass"
					style="border-color: #212121;"></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Login"></td>
			</tr>
		</table>

	</form>

	<br>
	<br>
	<br>
	<!-- Footer -->
	<jsp:include page="footer.jsp"></jsp:include>


</body>
</html>