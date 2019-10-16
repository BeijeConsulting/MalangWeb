package it.beije.malang.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDatabase {

	 public static Connection getConnection() throws ClassNotFoundException, SQLException{
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/malang?serverTimezone=CET", "root", "Padawan13");	
		} catch (ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
			throw cnfEx;
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
			throw sqlEx;
		}
		
		return conn;
	}
}