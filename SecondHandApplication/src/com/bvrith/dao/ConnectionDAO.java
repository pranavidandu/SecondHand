package com.bvrith.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.apache.log4j.Logger;

import com.mysql.jdbc.Statement;
import com.mysql.jdbc.log.Log;

public class ConnectionDAO {
	Logger log = Logger.getRootLogger();
	String url = "jdbc:mysql://localhost:3306/secondhand";
	String username = "root";
	String password = "radheradhe";
	Connection conn;
	Statement st;


	public Connection getConnection() throws ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		log.info("driver loaded");
		try {
			conn = DriverManager.getConnection(url,username,password);
			//log.info("Driver loaded");


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
