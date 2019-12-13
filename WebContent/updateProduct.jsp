<%@page import="com.demoProject.pojo.Product"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Product p = (Product) session.getAttribute("pl");
	%>
	<form action="" method="post">


		<table cellpadding="10" cellspacing="6" border="2" align="center">
			<tr>
				<td>Product Id</td>
				<td><input type="text" name="pid" value="<%=p.getPid()%>"></td>
			</tr>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="pname" value="<%=p.getPname()%>"></td>
			</tr>
			<tr>
				<td>Product Description</td>
				<td><input type="text" name="pdescription"
					value="<%=p.getPdescription()%>"></td>
			</tr>
			<tr>
				<td>Product Price</td>
				<td><input type="text" name="price" value="<%=p.getPrice()%>"></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><input type="text" name="category"
					value="<%=p.getCategory()%>"></td>
			</tr>
			<tr>
				<td><input type="submit" value="Save"></td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>
	</form>
</body>
</html>