package com.bvrith.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bvrith.beans.SubmitAnAdBean;

public class SubmitAnAdDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public SubmitAnAdDAO() throws SQLException, ClassNotFoundException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	public int createAd(SubmitAnAdBean submitAnAdBean) throws SQLException {
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
}