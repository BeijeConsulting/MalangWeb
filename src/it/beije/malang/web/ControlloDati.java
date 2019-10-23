package it.beije.malang.web;

public class ControlloDati {
	
	public static String controlloTel(String telefono) {
		int count=0;
		if (telefono!="")
		{
		if (telefono.charAt(0)=='+'||telefono.charAt(0)=='3')
		{
			for (int i=0; i<telefono.length();i++) {
				for (char c='0'; c<='9';c++) {
					char temp=telefono.charAt(i);
					if (temp=='+') count++;
					if (temp>'9' && temp!=' ')
					{
						return null;
					}
				}
			}
			if(count>1) return null;
			return telefono;
		}
		else
		{
			return null;
		}
		}
		return null;
	}
	
	public static String controlloMail(String email){
		email=email.trim();
		int count=0;
		int count2=0;
		for (int i=0;i<email.length();i++) {
			if (email.charAt(i)=='@') {
				count++;
				for(int j = 0 ; j<email.length(); j++) {
					if(email.charAt(j)=='.') {
						count2++;
					}
				}
			}
		}
		if (count==1&&count2==1) return email;

		else return null;
	}

}
