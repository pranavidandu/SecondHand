package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrith.beans.AdsBean;
import com.bvrith.dao.AdDAO;

public class AdsController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String adtitle = request.getParameter("adtitle");
		String category = request.getParameter("category");
		String addescription = request.getParameter("addescription");
		int price = Integer.parseInt(request.getParameter("price"));
		String name = request.getParameter("names");
		String email = request.getParameter("emails");
		String phone = request.getParameter("phone");
		String whatsapp = "Y";
		String city = request.getParameter("city");
		AdDAO adDAO;
		int result = 0;
		try {
			adDAO = new AdDAO();
			AdsBean subbean = new AdsBean(adtitle, category, addescription, price, name, email, phone, whatsapp, city);
		    result = adDAO.createAd(subbean);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		if(result >= 1) {
			response.sendRedirect("start.jsp");
		}
		else {
			response.sendRedirect("submitanad.jsp");
		}
	}
}