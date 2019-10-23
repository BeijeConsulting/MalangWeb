package it.beije.malang.web;


public class Utente {

	private String cognome; 
	private String nome; 
	private String email;
	
	
	public String getCognome() {
		return cognome;
	}
	public String setCognome(String cognome) {
		this.cognome = cognome;
		return cognome;
	}
	
	public String getNome() {
		return nome;
	}
	public String setNome(String nome) {
		this.nome = nome;
		return nome;
	}
	
	public String getEmail() {
		return email;
	}
	public String setEmail(String email) {
		this.email = email;
		return email;
	}
	
}
