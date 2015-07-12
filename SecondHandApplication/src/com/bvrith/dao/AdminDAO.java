package com.bvrith.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

public class AdminDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public AdminDAO() throws SQLException, ClassNotFoundException, IOException, NamingException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	public int countOfUsers() throws SQLException {
		int count = 0;
		String sql = "select count(*) from register";
		st = conn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			count = rs.getInt("count(*)");
		}
		return count;
	}
	public int countOfAds() throws SQLException {
		int count = 0;
		String sql = "select count(*) from ad";
		st = conn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			count = rs.getInt("count");
		}
		return count;
	}
	public int countOfItemsSold() throws SQLException {
		int count = 0;
		String sql = "select count(*) from ad where sold='sold out'";
		st = conn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			count = rs.getInt("count(*)");
		}
		return count;
	}
	public int countOfItemsAvailable() throws SQLException {
		int count = 0;
		String sql = "select count(*) from ad where sold='available'";
		st = conn.prepareStatement(sql);
		ResultSet rs = st.executeQuery();
		while(rs.next()) {
			count = rs.getInt("count(*)");
		}
		return count;
	}
}