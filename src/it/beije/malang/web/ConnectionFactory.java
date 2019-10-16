package it.beije.malang.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//import it.beije.malang.filecsv;

public class ConnectionFactory {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/malang?serverTimezone=CET", "root", "Beije06");
		} catch (ClassNotFoundException cnfEx) {
			System.out.println("non connesso nella connection factory");
			cnfEx.printStackTrace();
			throw cnfEx;
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
			throw sqlEx;
		}
		
		return conn;
	}
	
}
