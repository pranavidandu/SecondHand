package com.bvrith.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bvrith.beans.AdBean;

public class AdDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public AdDAO() throws SQLException, ClassNotFoundException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	public int createAd(AdBean adBean) throws SQLException {
		int result = 1;
		String query = "INSERT INTO submitanad VALUES(?,?,?,?,?,?,?,?,?)";
		st = conn.prepareStatement(query);
		st.setString(1, adBean.getAdtitle());
		st.setString(2, adBean.getCategory());
		st.setString(3, adBean.getAddescription());
		st.setInt(4, adBean.getPrice());
		st.setString(5, adBean.getName());
		st.setString(6, adBean.getEmail());
		st.setString(7, adBean.getPhone());
		st.setString(8, adBean.getWhatsapp());
		st.setString(9, adBean.getCity());
		result = st.executeUpdate();
		return result;
	}
	public List<AdBean> listAds(String category) throws SQLException {
		List<AdBean> lst = new ArrayList<AdBean>();
		String query = "SELECT * FROM Ad WHERE category = ?";
		st = conn.prepareStatement(query);
		st.setString(1, category);
		ResultSet rs = st.executeQuery();
		AdBean adbean;
		while(rs.next()) {
			adbean = new AdBean(rs.getString("adtitle"), rs.getString("category"), rs.getString("adadescrption"), rs.getInt("price"), rs.getString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("availableonwhatsapp"), rs.getString("city"));
			lst.add(adbean);
		}
		return lst;
	}
	public List<AdBean> listAds1(String email) throws SQLException {
		List<AdBean> lst = new ArrayList<AdBean>();
		String query = "SELECT * FROM Ad WHERE email = ?";
		st = conn.prepareStatement(query);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		AdBean adbean;
		while(rs.next()) {
			adbean = new AdBean(rs.getString("adtitle"), rs.getString("category"), rs.getString("adadescrption"), rs.getInt("price"), rs.getString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("availableonwhatsapp"), rs.getString("city"));
			lst.add(adbean);
		}
		return lst;
	}
	public int delete(String adtitle) throws SQLException {
		int result = 0;
		String query = "delete from Ad where adtitle = ?";
		st = conn.prepareStatement(query);
		st.setString(1, adtitle);
		result = st.executeUpdate();
		return result;
	}
}










