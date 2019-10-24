package it.beije.malang.web;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import it.beije.malang.web.Utente;
public class ScriviCSV {
	public static List<String[]> scrivi(Utente utente, String u_nome, String u_cognome, String u_email,  File fileName) throws IOException{
		Utente u = new Utente();		
		String[] utenti = {u_nome, u_cognome,u_email};
		File f1 = new File("C:\\temp\\prova1.txt");
		FileWriter fileWriter = new FileWriter(f1);	
		BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
		
		String firstRow =" COGNOME NOME EMAIL\n";// "COGNOME"	"NOME"	"TELEFONO"
		bufferedWriter.write(firstRow);
		List<String[]> rows = new ArrayList<String[]>();
		rows.add(utenti);

		for (String[] cols : rows) {
			StringBuilder row = new StringBuilder("\"");
			row.append(cols[1]).append('"');
			row.append('\t').append('"');
			row.append(cols[0]).append('"');
			row.append('\t').append('"');
			row.append(cols[2]).append('"').append('\n');
			
			try {
				bufferedWriter.write(row.toString());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		System.out.println("rows scritti: " + rows.size());
		bufferedWriter.close();
		
		return rows;
	}


public static void main(String[] args) throws Exception {
	// TODO Auto-generated method stub
	Utente u = new Utente();	
	String u_nome = u.setNome("luigi"); 
	String u_cognome = u.setCognome("rossi");
	String u_email = u.setEmail("luigi@rossi.com");
	String[] utenti = {u_nome, u_cognome,u_email};
	File f1 = new File("C:\\temp\\prova1.txt");
	System.out.println("il file è presente ? " + f1.exists());
	scrivi(u, u_nome, u_cognome, u_email, f1 );
	
	
	
}

}
