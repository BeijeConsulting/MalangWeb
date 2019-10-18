package it.beije.malang.web;

public class Autenticazione {

	final static String NOME = "Letizia";
	final static String PASSWORD = "caramelle31.";
	public static boolean valoriUguali(String nome, String password) {	
		if(nome.equals(NOME) && password.equals(PASSWORD)) 
			return true;
		
		return false;	
	}
}
