package com.bvrith.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrith.beans.UserBean;
import com.bvrith.dao.UserDAO;

public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NamingException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");	
		HttpSession hs = request.getSession();
		hs.setAttribute("emailid", email);
		boolean result = true;
		try {
			UserDAO userDAO = new UserDAO();
			UserBean userBean = new UserBean(email, password);
			result = userDAO.validateUser(userBean);
			System.out.println(result);
		}
		catch(ClassNotFoundException ce) {
			ce.printStackTrace();
		}
		catch(SQLException se) {
			se.printStackTrace();
		}
		SecondHandLog log = new SecondHandLog();
		log.write(email);
		if(result) {
			response.sendRedirect("start.jsp?status=Login Successfull");
		}
		else {
			response.sendRedirect("login.jsp?status=Invalid email or password");
		}

	}

}
