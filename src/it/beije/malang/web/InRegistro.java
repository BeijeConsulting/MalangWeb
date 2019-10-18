package it.beije.malang.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.StringTokenizer;

import it.beije.malang.database.ConnectionFactory;
import it.beije.malang.database.importfile;


public class InRegistro {
	public static List<String> salvaInArray(String user, String email, String password) {
			
			List<String> registrazione =Arrays.asList( user, email, password);
			return registrazione;
	}	


public static void DaArrayADb(String user, String email, String password) {

	Connection conn = null;
	
	try {
		
		conn = ConnectionFactory.getConnection();
				
		Statement stmt = conn.createStatement();
		
//		for (String cols : salvaInArray(user, email, password)) {
			
		String insert =  "INSERT INTO registro VALUES (null,'"+ salvaInArray(user, email, password).get(0) +"','"+
		salvaInArray(user, email, password).get(1)+"', '"+salvaInArray(user, email, password).get(2)+")";

		int r = stmt.executeUpdate(insert);
		
		System.out.println("rows affected : " + r);
		
//		}
		conn.close();
	}catch(ClassNotFoundException CNFExc) {
		System.out.println("classe non trovata");
	}catch(SQLException SQLExc) {
		
		System.out.println("SQLExc");
	}
}

}