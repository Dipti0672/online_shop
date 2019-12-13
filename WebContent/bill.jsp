<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body >
<jsp:include page="navBar.jsp"></jsp:include>
<br><br><br><br>
<h2 align="center">Your Order Placed Successfully</h2>
<br> <br> 
	<table  style="width:50%" cellpadding="10" cellspacing="10" border="3" align="center">
		
		<tr>
			<td>
				<h5>Name</h5>
			</td>
			<td>
				<h4>${u.name}</h4>
			</td>
		</tr>
		<tr>
			<td>
				<h5>Mobile No</h5>
			</td>

			<td>
				<h4>${u.contact}</h4>
			</td>
		</tr>
		<tr>
			<td><h5>Email Id</h5></td>

			<td><h4>${u.email}</h4></td>
		</tr>
		<tr>
			<td><h5>Address</h5></td>
			<td><h4>${u.address}</h4></td>
		</tr>
		<tr  border="3">
			<td><h2>Total Bill</h2></td>
			<td><h2>${totalPrice}</h2></td>
		</tr>

	</table>
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>