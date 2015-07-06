package com.bvrith.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import sun.util.logging.resources.logging;

import com.mysql.jdbc.Statement;
import com.mysql.jdbc.log.Log;

public class ConnectionDAO {
	String url = "jdbc:mysql://localhost:3306/secondhand";
	String username = "root";
	String password = "radheradhe";
	Connection conn;
	Statement st;


	public Connection getConnection() throws ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");

		try {
			conn = DriverManager.getConnection(url,username,password);


		} catch (SQLException e) {
			// TODO Auto-generated catch block

			e.printStackTrace();
		}
		return conn;
	}
}
/*Connection conn = null;
	public Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("org.postgresql.Driver");
		String url = "jdbc:postgresql://localhost:5432/secondhand";
		String user = "postgres";
		String password = "123456";
		conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
}*/
