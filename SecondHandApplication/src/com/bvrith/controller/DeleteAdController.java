package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrith.dao.AdDAO;


public class DeleteAdController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			int id = Integer.parseInt(request.getParameter("id"));
			String email = request.getParameter("email");
			AdDAO addao = new  AdDAO();
			int result = addao.deleteAd(id);
			if(result >= 1) {
				response.sendRedirect("ManageAd.jsp?email=" + email + "&message=Deleted Successfully");
			}
			else {
				response.sendRedirect("ManageAd.jsp?email=" + email + "&message=Deletion not successful");
			}

		} catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

}
