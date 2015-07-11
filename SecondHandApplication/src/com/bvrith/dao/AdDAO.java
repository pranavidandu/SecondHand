package com.bvrith.dao;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.bvrith.beans.AdBean;
import com.bvrith.controller.AdsController;

public class AdDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public AdDAO() throws SQLException, ClassNotFoundException, IOException, NamingException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	private int noOfRecords;
	private String filePath;

	public int getNoOfRecords() {
		return noOfRecords;
	}
	public List<AdBean> listAds(String cat,  int offset,
			int noOfRecords) throws SQLException {
		List<AdBean> lst = new ArrayList<AdBean>();
		String query = "select SQL_CALC_FOUND_ROWS * from ad where category = ? limit " + offset + "," + noOfRecords;		
		st = conn.prepareStatement(query);	
		st.setString(1, cat);
		ResultSet rs = st.executeQuery();
		AdBean adbean;
		while(rs.next()) {
			adbean = new AdBean(rs.getInt("id"), rs.getString("adtitle"), rs.getString("category"), rs.getString("addescription"), rs.getString("file"), rs.getInt("price"), rs.getString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("whatsapp"), rs.getString("city"), rs.getString("sold"));

			lst.add(adbean);
		}

		rs.close();

		rs = st.executeQuery("SELECT FOUND_ROWS()");
		if(rs.next())
			this.noOfRecords = rs.getInt(1);

		return lst;
	}
	public List<AdBean> listAds1(String email) throws SQLException {
		List<AdBean> lst = new ArrayList<AdBean>();
		String query = "SELECT * FROM ad WHERE email = ?";
		st = conn.prepareStatement(query);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		AdBean adbean;
		while(rs.next()) {
			adbean = new AdBean(rs.getInt("id"),rs.getString("adtitle"), rs.getString("category"), rs.getString("addescription"), rs.getString("file"), rs.getInt("price"), rs.getString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("whatsapp"), rs.getString("city"), rs.getString("sold"));

			lst.add(adbean);
		}
		return lst;
	}

	public List<AdBean> priceFilter(String fromRange, String toRange, String category, int offset,
			int noOfRecords) throws SQLException {
		List<AdBean> lst = new ArrayList<AdBean>();
		String query = "select SQL_CALC_FOUND_ROWS * from ad where price >= ? and price <= ? and category = ? limit " + offset + "," + noOfRecords;
		st = conn.prepareStatement(query);
		int from = Integer.parseInt(fromRange);
		int to = Integer.parseInt(toRange);
		st.setInt(1, from);
		st.setInt(2, to);
		st.setString(3, category);
		ResultSet rs = st.executeQuery();
		AdBean adbean;
		while(rs.next()) {
			adbean = new AdBean(rs.getInt("id"),rs.getString("adtitle"), rs.getString("category"), rs.getString("addescription"), rs.getString("file"), rs.getInt("price"), rs.getString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("whatsapp"), rs.getString("city"), rs.getString("sold"));
			lst.add(adbean);
		}
		rs.close();

		rs = st.executeQuery("SELECT FOUND_ROWS()");
		if(rs.next())
			this.noOfRecords = rs.getInt(1);
		return lst;
	}
	public int deleteAd(int ID) throws SQLException {
		int result = 1;
		String query = "update ad set sold = 'sold out' where id = ?";
		st = conn.prepareStatement(query);
		st.setInt(1, ID);
		result = st.executeUpdate();
		return result;
	}


}