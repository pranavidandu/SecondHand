package com.bvrith.dao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.NamingException;

import com.bvrith.beans.MessageBean;
public class MessageDAO {
	ConnectionDAO conectionDao = null;
	Connection conn = null;
	PreparedStatement st = null;
	public MessageDAO() throws SQLException, ClassNotFoundException, IOException, NamingException{
		conectionDao = new ConnectionDAO();
		conn = conectionDao.getConnection();
	}
	public int insertMessage(MessageBean messageBean) throws SQLException {
		int result = 0;
		String query = "insert into message(myaddress, fromemail, textarea) values(?,?,?)";
		st = conn.prepareStatement(query);
		st.setString(1, messageBean.getToemail());
		st.setString(2, messageBean.getFromemail());
		st.setString(3, messageBean.getMessage());
		result = st.executeUpdate();
		return result;
	}
	public int delete(int id) throws SQLException {
		int result = 1;
		String query = "delete from message where id=?";
		st = conn.prepareStatement(query);
		st.setInt(1, id);
		result = st.executeUpdate();
		return result;
	}
	public List<MessageBean> mymessages(String toemail) throws SQLException {
		List<MessageBean> lst = new ArrayList<MessageBean>();
		String query = "select * from message where myaddress=?";
		st = conn.prepareStatement(query);
		st.setString(1, toemail);
		ResultSet rs = st.executeQuery();
		MessageBean messageBean;
		while(rs.next()) {
			messageBean = new MessageBean(rs.getString("id"),rs.getString("myaddress"), rs.getString("fromemail"), rs.getString("textarea"));
			lst.add(messageBean);
		}
		return lst;
	}
	public int noOfMessages(String email) {
		int result = 0;
		try {
			String sql = "select count(*) from message where myaddress=?";
			st = conn.prepareStatement(sql);
			st.setString(1, email);
			ResultSet rs = st.executeQuery();
			while(rs.next()) {
				result = Integer.parseInt(rs.getString("count(*)"));
			}
		} catch(SQLException se) {
			se.printStackTrace();
		}
		return result;
	}
}


























