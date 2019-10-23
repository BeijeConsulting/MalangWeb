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
	public void scrivi(List<String[]> thingsToWrite,  File fileName){
		Utente u = new Utente();
		String nome = u.getNome(); 
		String cognome = u.getCognome();
		String email = u.getEmail();
		String[] utenti = {nome, cognome,email };
		
		//String utenti=  nome.concat(cognome).concat(email);
		//File f = new File(utenti);
		File f1 = new File("C:\\temp\\prova1.txt");
	}
//public void scrivi(List<String[]> thingsToWrite,  File fileName){
//	BufferedWriter writer = Files.newBufferedWriter(path)
//    try (FileWriter writer = new FileWriter(fileName)){
//        for (String[] strings : thingsToWrite) {
//            for (int i = 0; i < strings.length; i++) {
//                writer.append(strings[i]);
//                if(i < (strings.length-1))
//                    writer.append("\n");
//            }
//            writer.append(System.lineSeparator());
//        }
//        writer.flush();
//    } catch (IOException e) {
//        e.printStackTrace();
//    }
//}

public static void main(String[] args) throws Exception {
	// TODO Auto-generated method stub
	Utente u = new Utente();
	//String utenti= utenti.concat(u.getNome()).concat(u.getCognome()).concat(u.getEmail());
	//utenti = utenti.concat(u.getNome()).concat(u.getCognome()).concat(u.getEmail());
	
	
	
	String nome = u.getNome(); 
	String cognome = u.getCognome();
	String email = u.getEmail();
	String utenti = nome.concat(cognome).concat(email);
	//String utenti=  nome.concat(cognome).concat(email);
	File f = new File(utenti);
	File f1 = new File("C:\\temp\\prova1.txt");
	System.out.println("il file è presente ? " + f.exists());
	System.out.println("l'utente " + utenti);
	List<String[]> Utenti = new ArrayList<String>();
	Utenti.add(nome);
	Utenti.add(cognome);
	Utenti.add(email);
	String separator;
	//String strings = utenti.split(" ");
	//scrivi(Utenti ,f1 );
	
	
	
}

}
/*
public class ScriviCSV {
	
	public static void copiaFile(String pathOrig, String pathCopia) throws IOException {
		File orig = new File(pathOrig);
		File copia = new File(pathCopia);
		copiaFile(orig, copia);
	}
	
	public static void copiaFile(File orig, File copia) throws IOException {
		if (orig.exists()) {
			FileReader fileReader = new FileReader(orig);
			FileWriter fileWriter = new FileWriter(copia);
			while (fileReader.ready()) {
				fileWriter.write((char)fileReader.read());
			}
			
			fileReader.close();
			fileWriter.close();
		} else {
			System.out.println("il path del file origine è errato");
		}
	}
///////////////////////////
	public static void taglia() throws IOException {
		Utente u = new Utente();
		List<String[]> utenti = new ArrayList<String[]>();
		
		//String[] utenti = new String[3];
		utenti[0] = u.setNome("Pippo"); 
		utenti[1] = u.setCognome("Rossi");
		utenti[2]= u.setEmail("pippo@rossi.com");
		//String utenti = nome.concat(cognome).concat(email);
		//File f = new File(utenti);
		File f1 = new File("C:\\temp\\prova1.txt");
		//FileReader fileReader = new FileReader(f);
		FileWriter fileWriter = new FileWriter(f1);
		
		//BufferedReader bufferedReader = new BufferedReader(fileReader);
		//BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
		
		
		//leggo e carico tutto in un ArrayList di array di stringhe
				List<String[]> rows = new ArrayList<String[]>();
				while (fileWriter == null) {
					fileWriter.write(utenti);
					
					
//					utenti = bufferedReader.readLine();
//					String[] cols = utenti.split(" "); // spezza la riga del file .txt in colonne
//					System.out.println("letto: "+ Arrays.toString(cols));
//					rows.add(cols);
//					String row = bufferedReader.readLine();
//			
//					String[] cols = row.split(" ");
//					rows.add(cols);
					System.out.println("utente 1 " + rows);
				}
				
				//String firstRow ="\"COGNOME\"\t\"NOME\"\t\"TELEFONO\"\n";// "COGNOME"	"NOME"	"TELEFONO"
				//bufferedWriter.write(firstRow);
					
					 //bufferedWriter.write(u);
				for (String[] cols : rows) {
					
					
					StringBuilder row = new StringBuilder("\"");
					row.append(cols[1]).append('"');
					row.append('\t').append('"');
					row.append(cols[0]).append('"');
					row.append('\t').append('"');
					row.append(cols[2]).append('"').append('\n');
					
					bufferedWriter.write(row.toString());
					
				}
				System.out.println("rows scritti: " + rows.size());
				bufferedWriter.close();
				
	}
//////////////////////////	
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Utente u = new Utente();
		//String utenti= utenti.concat(u.getNome()).concat(u.getCognome()).concat(u.getEmail());
		//utenti = utenti.concat(u.getNome()).concat(u.getCognome()).concat(u.getEmail());
		
		
		
		String nome = u.getNome(); 
		String cognome = u.getCognome();
		String email = u.getEmail();
		String utenti = nome.concat(cognome).concat(email);
		//String utenti=  nome.concat(cognome).concat(email);
		File f = new File(utenti);
		File f1 = new File("C:\\temp\\prova1.txt");
		System.out.println("il file è presente ? " + f.exists());
		System.out.println("l'utente " + utenti);
		taglia();
		
		
		
	}

}
*/

/*package it.beije.malang.web;

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

import java.io.Writer; 
import java.nio.*; 
import java.nio.file.Files; 
import java.nio.file.Paths; 
import java.util.*; 
import it.beije.malang.web.Contatto;
  
public class ScriviCSV {

	public static void main(String[] args) throws IOException{
		File file=new File("C:\\temp\\prova1.txt");
		FileReader fileReader=new FileReader(file);
		BufferedReader reader=new BufferedReader(fileReader);
		ArrayList<Contatto> contatti=new ArrayList<>();
		while (reader.ready()) {
			contatti.add(new Contatto(reader.readLine().split(";")));
		}
		reader.close();
		
		File copia=new File("C:\\temp\\prova1.txt");
		if (!copia.exists())
			copia.createNewFile();
		FileWriter fileWriter=new FileWriter(copia);
		BufferedWriter writer=new BufferedWriter(fileWriter);
		String temp;
		ArrayList<Contatto> copy=new ArrayList<>();
		for (Contatto cont:contatti)
		{
			copy.add(new Contatto(cont));
		}
		for (int i=0;i<copy.size();i++)
		{
			if (i==0)
				copy.get(i).setCognome(contatti.get(contatti.size()-1).getCognome());
			else
				copy.get(i).setCognome(contatti.get(i-1).getCognome());
			writer.write(copy.get(i).toString(2));
			writer.newLine();
		}
		writer.close();
		
	}

}
 
*/





