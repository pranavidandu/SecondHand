package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrith.beans.MessageBean;
import com.bvrith.dao.MessageDAO;

public class MessageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			doProcess(request, response);
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NamingException {
		try {
		    
			String fromemail = request.getParameter("fromemail");
			String toemail = request.getParameter("toemail");
			String message = request.getParameter("message");
			MessageBean messageBean = new MessageBean(fromemail, toemail, message);
			MessageDAO messageDAO = new MessageDAO();
			int result = messageDAO.insertMessage(messageBean);
			if(result >= 1) {
				response.sendRedirect("start.jsp");
			}
			else {
				System.out.println("fail");
				response.sendRedirect("start.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			
			e.printStackTrace();
		}
	}

}
