package com.bvrith.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bvrith.beans.AdBean;
import com.bvrith.dao.AdDAO;

/**
 * Servlet implementation class UpdateController
 */
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * 
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	

	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setContentType("text/html;charset=UTF-8");
		    AdsController adscontroller = new AdsController();
			String id = request.getParameter("id");
			String adtitle = request.getParameter("adtitle");
			String file = adscontroller.getFilePath();
			String email = request.getParameter("email");
			String name = request.getParameter("name");
			String phone = request.getParameter("phone");
			String addescription = request.getParameter("addescription");
			String city = request.getParameter("city");
			String category = request.getParameter("category");
			String whatsapp = request.getParameter("whatsapp");
			int price = Integer.parseInt(request.getParameter("price"));
			AdBean adBean = new AdBean(id, adtitle, category, addescription, file, price, name, email, phone, whatsapp, city);
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

