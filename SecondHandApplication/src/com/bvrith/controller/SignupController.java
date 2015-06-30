package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrith.beans.UserBean;
import com.bvrith.dao.UserDAO;

public class SignupController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("email");
		String pass = request.getParameter("password1");
		String pass1 = request.getParameter("password2");
		if(!pass.equals(pass1)) {
			response.sendRedirect("signup.jsp?status=Passwords don't match. Please try again.");
		}
		else {
			UserDAO userDAO;
			UserBean userBean = new UserBean(user, pass);
			try {
				int result = 0;
				userDAO = new UserDAO();
				result = userDAO.createUser(userBean);
				if(result >= 1) {
					HttpSession hs = request.getSession();
					hs.setAttribute("emailid", user);
					response.sendRedirect("login.jsp");
				}
				else {
					response.sendRedirect("signup.jsp?msg1=Sign up failed. Try again.");
				}
			} catch (ClassNotFoundException | SQLException e1) {
				e1.printStackTrace();
			} 
		}
	}
}
