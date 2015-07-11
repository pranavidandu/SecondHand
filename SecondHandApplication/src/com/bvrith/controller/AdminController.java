package com.bvrith.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bvrith.dao.AdminDAO;
import com.bvrith.dao.UserStatisticsDAO;

public class AdminController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs = request.getSession();
		String email = (String) hs.getAttribute("emailid");
		if(email.equalsIgnoreCase("admin@gmail.com")) {
			try {
				AdminDAO adminDAO = new AdminDAO();
				int noOfUsers = adminDAO.countOfUsers();
				int noOfAds = adminDAO.countOfAds();
				int noOfItemsSold = adminDAO.countOfItemsSold();
				int noOfItemsAvailable = adminDAO.countOfItemsAvailable();
				response.sendRedirect("statistics.jsp?users=" + noOfUsers +"&ads=" + noOfAds + "&sold=" + noOfItemsSold + "&available=" + noOfItemsAvailable);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		else {
			try {
				UserStatisticsDAO userStatisticsDAO = new UserStatisticsDAO();
				int noOfAds = userStatisticsDAO.countOfAds(email);
				int noOfItemsSold = userStatisticsDAO.countOfItemsSold(email);
				int noOfItemsAvailable = userStatisticsDAO.countOfItemsAvailable(email);
				response.sendRedirect("statistics.jsp?ads=" + noOfAds + "&sold=" + noOfItemsSold + "&available=" + noOfItemsAvailable);
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}

}
