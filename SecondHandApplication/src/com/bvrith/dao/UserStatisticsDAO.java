package com.bvrith.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

public class UserStatisticsDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public UserStatisticsDAO() throws SQLException, ClassNotFoundException, IOException, NamingException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	public int countOfAds(String email) throws SQLException {
		int count = 0;
		String sql = "select count(*) from ad where email=?";
		st = conn.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			count = rs.getInt("count(*)");
		}
		return count;
	}
	public int countOfItemsSold(String email) throws SQLException {
		int count = 0;
		String sql = "select count(*) from ad where sold = 'sold out' and email=?";
		st = conn.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			count = rs.getInt("count(*)");
		}
		return count;
	}
	public int countOfItemsAvailable(String email) throws SQLException {
		int count = 0;
		String sql = "select count(*) from ad where sold = 'available' and email=?";
		st = conn.prepareStatement(sql);
		st.setString(1, email);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			count = rs.getInt("count(*)");
		}
		return count;
	}
}
