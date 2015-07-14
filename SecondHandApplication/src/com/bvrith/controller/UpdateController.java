package com.bvrith.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bvrith.beans.AdBean;
import com.bvrith.dao.AdDAO;
import com.bvrith.dao.ConnectionDAO;

public class UpdateController extends HttpServlet {


	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public UpdateController() throws SQLException, ClassNotFoundException, IOException, NamingException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
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
			String id = request.getParameter("id");
			String adtitle = request.getParameter("adtitle");
			String email = request.getParameter("email");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String addescription = request.getParameter("addescription");
			String file = request.getParameter("file");
			String city = request.getParameter("city");
			String category = request.getParameter("category");
			String whatsapp = request.getParameter("whatsapp");
			int price = Integer.parseInt(request.getParameter("price"));
			String sold = request.getParameter("sold");
			AdBean adBean = new AdBean(id, adtitle, category, addescription, file, price, name, email, phone, "Available", city, sold);
			AdDAO adDAO = new AdDAO();
			int result = adDAO.update(adBean);
			if(result >= 1) {
				response.sendRedirect("manageYourAds.jsp?email=" + email + "&message=Updated Successfully");
			}
			else {
				response.sendRedirect("manageYourAds.jsp?email=" + email + "&message=Not Updated. Try again");
			}
		}
		catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}