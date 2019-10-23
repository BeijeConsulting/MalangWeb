package it.beije.malang.web;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.StringTokenizer;

import it.beije.malang.web.Contatto;
import it.beije.malang.database.ConnectionFactory;

public class importfile{

		
public static void toDB(String user, String email, String password) throws ClassNotFoundException, SQLException {	
	
		
		Connection conn = ConnectionFactory.getConnection();
				
		Statement stmt = conn.createStatement();
		
		String insert =  "INSERT INTO registro VALUES (null,'"+user+"','"+email+"', '"+password+"' )";

		int r = stmt.executeUpdate(insert);
		
		System.out.println("rows affected : " + r);
		
		conn.close();
	
}

public static void export(String percorso, String nome ,String cognome ,String email ,String telefono) {

	try {		
		FileWriter fileWriter = new FileWriter(percorso);
		BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
		
		ModificaUser modificaUser = new ModificaUser();				
				
					StringBuilder row = new StringBuilder();
					
					row.append(nome).append("; ");
					row.append(cognome).append("; ");
					row.append(email).append("; ");
					row.append(telefono).append("; ");
					
					bufferedWriter.write(row.toString());
					bufferedWriter.close();			
	}catch(IOException IOe){
	System.out.println("IOe");
}
}	
}