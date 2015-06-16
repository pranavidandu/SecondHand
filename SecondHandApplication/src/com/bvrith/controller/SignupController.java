package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
				String pass = request.getParameter("password");
				UserDAO userDAO;
				UserBean userBean = new UserBean(user, pass);
				try {
					int result = 0;
					userDAO = new UserDAO();
					result = userDAO.createUser(userBean);
					if(result >= 1) {
						response.sendRedirect("start.jsp");
					}
					else {
						response.sendRedirect("signup.jsp");
					}
				} catch (ClassNotFoundException | SQLException e1) {
					e1.printStackTrace();
				} 
	}
}
