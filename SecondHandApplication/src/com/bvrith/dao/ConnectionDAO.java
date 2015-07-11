package com.bvrith.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Properties;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionDAO {
	Connection con = null;
	String URL,PASSWORD,USER;
	public Connection getConnection() throws SQLException, NamingException{
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:comp/env");
			DataSource ds = (DataSource) envContext.lookup("jdbc/secondhand");
			Connection conn = ds.getConnection();
			System.out.println("Driver loaded");
			System.out.println(conn);
			return conn;
		}
		catch(NamingException c) {
			System.out.println("driver not loaded");
			return null;
		}
	}
}
	 /*Logger log = Logger.getRootLogger();
     String password;
     String url;
     String user;
	


     public Connection getConnection() throws IOException {
    	    Connection conn = null;
    	                File file = new File("/home/pranavi/git/secondhand.com/SecondHandApplication/config.properties");
    	                  FileInputStream fileInput = new FileInputStream(file);
    	                  Properties properties = new Properties();
    	                  properties.load(fileInput);
    	                  fileInput.close();

    	                  Enumeration enuKeys = properties.keys();
    	            
    	                  url = properties.getProperty("url");
    	                   user = properties.getProperty("user");
    	                  password = properties.getProperty("password");
    	  
    	        try {
    	            // load driver
    	            Class.forName("com.mysql.jdbc.Driver");
    	            log = Logger.getLogger(ConnectionDAO.class);
    	            Logger.getRootLogger().info("driver loaded");
    	            System.out.println("driver loaded");

    	            // create connection
    	            conn = DriverManager.getConnection(url, user, password);
    	            System.out.println("successfully connected");
    	        } catch (SQLException e) {
    	            // TODO Auto-generated catch block
    	            e.printStackTrace();
    	        } catch (ClassNotFoundException e) {
    	            // TODO Auto-generated catch block
    	            e.printStackTrace();
    	        }

    	        return conn;

    	    }*/







