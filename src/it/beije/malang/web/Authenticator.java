package it.beije.malang.web;

public class Authenticator {
	private static final String USER="prova";
	private static final String PASS="1234";
	
	public static boolean isValid(String user, String pass) {
		
		try {
		if (user.equals(USER) && pass.equals(PASS))
			return true;
		}catch(NullPointerException e) {
			e.printStackTrace();
		}
		return false;
	}
}
