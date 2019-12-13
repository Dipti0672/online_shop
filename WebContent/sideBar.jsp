<%@page import="com.demoProject.dao.ProductDaoImpl"%>
<%@page import="java.util.List"%>
<%@page import="com.demoProject.dao.ProductDao" %>
<%@page import="com.demoProject.servlet.ProductServlet" %>


<div class="col-lg-3">

	
	 <%ProductDaoImpl pd=new ProductDaoImpl();
		List<String> cl=pd.getAllCategory(); %>
        <h1 class="">Store</h1>
        <div class="list-group">
        <%for(String c:cl){ %>
          <a href="ProductServlet?action=getProduct&category=<%=c%>" class="list-group-item"><%=c %></a>
          <%} %>
          
        </div>

      </div>