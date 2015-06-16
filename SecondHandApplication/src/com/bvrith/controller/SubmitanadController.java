package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrith.beans.SubmitAnAdBean;
import com.bvrith.dao.SubmitAnAdDAO;

public class SubmitanadController extends HttpServlet {
	
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
		System.out.println("Here" + whatsapp);
		SubmitAnAdDAO submitAnAdDAO;
		
		int result = 0;
		try {
			submitAnAdDAO = new SubmitAnAdDAO();
			SubmitAnAdBean subbean = new SubmitAnAdBean(adtitle, category, addescription, price, name, email, phone, whatsapp, city);
		    result = submitAnAdDAO.createAd(subbean);
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