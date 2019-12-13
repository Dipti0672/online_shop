<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<br>
	<br>
	<br>
	<form action="ProductServlet" method="post">

		<table style="width: 40%" cellpadding="10" cellspacing="8" border="1"
			align="center">
			<tr>
				<td><b>Product Id</b></td>
				<td><input type="text" name="pid">
			</tr>
			<tr>
				<td><b>Product Name</b></td>
				<td><input type="text" name="pname">
			</tr>
			<tr>
				<td><b>Product Description</b></td>
				<td><input type="text" name="pdescription">
			</tr>
			<tr>
				<td><b>Product Price</b></td>
				<td><input type="text" name="price">
			</tr>
			<tr>
				<td><b>Product Category</b></td>
				<td><select name="category">
						<option value="Iphone">Iphone</option>
						<option value="Sansung">Samsung</option>
						<option value="Moto">Moto</option>
						<option value="OnePlus">One Plus</option>

				</select></td>

			</tr>

			<tr>

				<td colspan="2" align="center"><input type="submit"
					value="Save"> <input type="reset" value="Reset"></td>

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

