package com.bvrith.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bvrith.beans.AdBean;
import com.bvrith.dao.AdDAO;
import com.bvrith.dao.ConnectionDAO;

public class UpdateController extends HttpServlet {
	
	private static final String SAVE_DIR="images";
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public UpdateController() throws SQLException, ClassNotFoundException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdDAO adDAO;
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		//String appPath = request.getServletContext().getRealPath("");
		String appPath = "/home/pranavi/git/secondhand.com/SecondHandApplication/WebContent";
		System.out.println(appPath);
		String savePath = appPath + File.separator + SAVE_DIR;
		File fileSaveDir=new File(savePath);
		if(!fileSaveDir.exists()){
			fileSaveDir.mkdir();
		}
		Part part=request.getPart("file");
		System.out.println(part);
		String fileName=extractFileName(part);
		part.write(savePath + File.separator + fileName);
		String id = request.getParameter("id");
		String adtitle = request.getParameter("adtitle");
		String category = request.getParameter("category");
		String addescription = request.getParameter("addescription");
		int price = Integer.parseInt(request.getParameter("price"));
		String name = request.getParameter("names");
		String email = request.getParameter("emails");
		String phone = request.getParameter("phone");
		String whatsapp = "Y";
		String city = request.getParameter("city");
		int result = 0;
		String filePath1= savePath + File.separator + fileName ;
		try {
			
				String query = "update ad set category = ?, addescription = ?, file = ?, price = ?, name = ?, email = ?, phone = ?, whatsapp = ?, city = ? where adtitle= ?";
				st.setString(1, category);
				st.setString(2, addescription);
				st.setString(3, filePath1);
				st.setInt(4, price);
				st.setString(5, name);
				st.setString(6, email);
				st.setString(7, phone);
				st.setString(8, whatsapp);
				st.setString(9, city);
				st.setString(10, adtitle);
				st = conn.prepareStatement(query);
				result = st.executeUpdate();
			}
		 catch (SQLException e) {
			e.printStackTrace();
		}

		if(result >= 1) {
			response.sendRedirect("ManageAd.jsp?email=" + email + "&message=Updated Successfully");
		}
		else {
			response.sendRedirect("ManageAd.jsp?email=" + email + "&message=Not Updated. Try again");
		}	
	}
	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length()-1);
			}
		}
		return "";
	}	
}