package com.bvrith.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bvrith.dao.ConnectionDAO;
import com.bvrith.beans.UserBean;

public class UserDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public UserDAO() throws SQLException, ClassNotFoundException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	public boolean validateUser(UserBean userBean) throws SQLException {
		ResultSet rs;
		boolean result = false;
		String user = userBean.getEmail();
		String password = userBean.getPassword();
		String query = "SELECT * FROM register WHERE email=? and password=?";
		st = conn.prepareStatement(query);
		st.setString(1, user);
		st.setString(2, password);
		rs = st.executeQuery();
		if(rs.next()) {
			result = true;
		}
		return result;
	}
	public int createUser(UserBean userBean) throws SQLException {
		String query = "INSERT INTO register VALUES(?,?)";
		st = conn.prepareStatement(query);
		st.setString(1,userBean.getEmail());
		st.setString(2,userBean.getPassword());
		int result = 0;	
		result = st.executeUpdate();
		return result;
	}
}