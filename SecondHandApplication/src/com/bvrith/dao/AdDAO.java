package com.bvrith.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bvrith.beans.AdsBean;

public class AdDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public AdDAO() throws SQLException, ClassNotFoundException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	public int createAd(AdsBean submitAnAdBean) throws SQLException {
		int result = 1;
		String query = "INSERT INTO submitanad VALUES(?,?,?,?,?,?,?,?,?)";
		st = conn.prepareStatement(query);
		st.setString(1, submitAnAdBean.getAdtitle());
		st.setString(2, submitAnAdBean.getCategory());
		st.setString(3, submitAnAdBean.getAddescription());
		st.setInt(4, submitAnAdBean.getPrice());
		st.setString(5, submitAnAdBean.getName());
		st.setString(6, submitAnAdBean.getEmail());
		st.setString(7, submitAnAdBean.getPhone());
		st.setString(8, submitAnAdBean.getWhatsapp());
		st.setString(9, submitAnAdBean.getCity());
		result = st.executeUpdate();
		return result;
	}
	public List<AdsBean> listAds(String category) throws SQLException {
		List<AdsBean> lst = new ArrayList<AdsBean>();
		String query = "SELECT * FROM submitanad WHERE category = ?";
		st = conn.prepareStatement(query);
		st.setString(1, category);
		ResultSet rs = st.executeQuery();
		AdsBean submitAnAdBean;
		while(rs.next()) {
			submitAnAdBean = new AdsBean(rs.getString("adtitle"), rs.getString("category"), rs.getString("adadescrption"), rs.getInt("price"), rs.getString("name"), rs.getString("email"), rs.getString("phone"), rs.getString("availableonwhatsapp"), rs.getString("city"));
			lst.add(submitAnAdBean);
		}
		return lst;
	}
}










