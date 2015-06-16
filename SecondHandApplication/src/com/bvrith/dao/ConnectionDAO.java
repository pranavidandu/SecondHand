package com.bvrith.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDAO {
	Connection conn = null;
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("org.postgresql.Driver");
		String url = "jdbc:postgresql://localhost:5432/secondhand";
		String user = "postgres";
		String password = "123456";
		conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
}
