package com.bvrith.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

import com.bvrith.beans.AdBean;
import com.bvrith.dao.AdDAO;
import com.bvrith.dao.ConnectionDAO;


@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
maxFileSize=1024*1024*10,      // 10MB
maxRequestSize=1024*1024*50)


public class AdsController extends HttpServlet {
	private static final String SAVE_DIR="images";
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public AdsController() throws SQLException, ClassNotFoundException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	private  String filePath;



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		filePath= savePath + File.separator + fileName ;

		try {


			PreparedStatement st = null;
			String query = "INSERT INTO ad (adtitle, category, addescription, file, price, name, email, phone, whatsapp, city) VALUES(?,?,?,?,?,?,?,?,?,?)";
			st = conn.prepareStatement(query);
			st.setString(1, adtitle);
			st.setString(2, category);
			st.setString(3, addescription);
		
			System.out.println(filePath);
			st.setString(4, filePath);
			st.setInt(5, price);
			st.setString(6, name);
			st.setString(7, email);
			st.setString(8, phone);
			st.setString(9, whatsapp);
			st.setString(10, city);
			result = st.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		if(result >= 1) {
			response.sendRedirect("start.jsp");
		}
		else {
			response.sendRedirect("ad.jsp");
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
	public void setFilePath(String filePath){
		this.filePath = filePath;
	}
	public  String getFilePath(){
		return filePath;
	}
}