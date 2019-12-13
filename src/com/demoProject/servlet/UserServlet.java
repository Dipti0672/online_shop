package com.demoProject.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.demoProject.dao.UserDaoImpl;
import com.demoProject.pojo.User;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	User u=new User();
	UserDaoImpl ud=new UserDaoImpl();
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();

		String action=request.getParameter("action");
		if(action!=null && action.equals("delete")) {
			int id=Integer.parseInt(request.getParameter("id"));
			boolean b=ud.deleteUser(id);
			if(b) {
				response.sendRedirect("UserServlet");
			}
			
		}
		else if(action!=null && action.equals("edit")) {
			int id=Integer.parseInt(request.getParameter("id"));
			User u=ud.getUserById(id);
			session.setAttribute("u", u);
			response.sendRedirect("updateUser.jsp");
		}
		else {
		List<User> al=ud.getAllUser();
		session.setAttribute("al", al);
		response.sendRedirect("userList.jsp");
		}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String contact=request.getParameter("contact");
		String address=request.getParameter("address");
		String password=request.getParameter("pass");
		u.setName(name);
		u.setContact(contact);
		u.setEmail(email);
		u.setAddress(address);
		u.setPassword(password);
		boolean b=ud.addUser(u);
		if(b) {
			response.sendRedirect("success.jsp");
		}else {
			response.sendRedirect("fail.jsp");
		}


	}

}
