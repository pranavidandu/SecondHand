package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrith.dao.MessageDAO;

public class DeleteMessageController extends HttpServlet {
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
		int id = Integer.parseInt(request.getParameter("id"));
		try {
			MessageDAO messageDAO = new MessageDAO();
			int result = messageDAO.delete(id);
			if (result >= 1) {
				response.sendRedirect("showmessage.jsp?message=Message Deleted");
			}
			else {
				response.sendRedirect("showmessage.jsp?message=Message not Deleted");
			}
		}
		catch(ClassNotFoundException ce) {
			ce.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}