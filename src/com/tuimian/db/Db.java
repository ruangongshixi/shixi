package com.tuimian.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class Db {
		private static String password="666";
		private static String username="admin";
		private static Connection conn=null;
		static String url = "jdbc:mysql://localhost:3306/tuimian?characterEncoding=utf-8";
		public static Connection get_connection() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(url, username, password);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return conn;
		}
	}

