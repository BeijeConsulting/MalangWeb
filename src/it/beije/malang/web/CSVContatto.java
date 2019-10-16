package it.beije.malang.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import it.beije.malang.ContattoMalang;

public class CSVContatto {
	public static List<ContattoMalang> readFile(String path) {
		File file=new File("C:\\prova\\prova.csv");
		FileReader fileReader;
		BufferedReader reader=null;
		List<ContattoMalang> contatti=new ArrayList<>();
		try {
		fileReader=new FileReader(file);
		reader=new BufferedReader(fileReader);
		
			while (reader.ready()) {
				contatti.add(new ContattoMalang(reader.readLine().split(";")));
			}
			reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return contatti;
	}
}
