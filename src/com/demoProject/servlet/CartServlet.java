package com.demoProject.servlet;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demoProject.dao.CartDaoImpl;
import com.demoProject.dao.UserDaoImpl;
import com.demoProject.pojo.Cart;
import com.demoProject.pojo.User;


@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	UserDaoImpl ud=new UserDaoImpl();
	CartDaoImpl cd=new CartDaoImpl();
       
   
    public CartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String userName = (String) session.getAttribute("userName");
		System.out.print("java");
		
		String action =request.getParameter("action");
		if(action!=null && action.equals("addToCart")) {
			
			
			int pid=Integer.parseInt(request.getParameter("pid"));
			boolean b=cd.addToCart(pid,userName);
			if(b) {
				response.sendRedirect("index.jsp");
			}
			
		}else {
			
			List<Cart> cl=cd.getCartList(userName);
			session.setAttribute("cl", cl);
			response.sendRedirect("cartList.jsp");
			
		}
	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String price[]=request.getParameterValues("price");
		String qty[]=request.getParameterValues("qty");
		double totalPrice=0;
		for(int i=0;i<price.length;i++) {
			totalPrice=totalPrice+(Integer.parseInt(qty[i])*Double.parseDouble(price[i]));
		}
		HttpSession session=request.getSession();
		String userName = (String) session.getAttribute("userName");
		User u= ud.getUserByEmail(userName);
		boolean b=cd.deleteCartByUser(userName);
		if(b) {
		session.setAttribute("u",u);
		
		session.setAttribute("totalPrice",totalPrice);
		
		response.sendRedirect("bill.jsp");
		}
	}

}

	


