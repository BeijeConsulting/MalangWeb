package it.beije.malang.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Login2")
public class Login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Login2() {
        super();
   }



    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


		protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException{

			String nome=req.getParameter("nome").trim();
			String cognome=req.getParameter("cognome").trim();

			String telefono=req.getParameter("telefono");
			String email=req.getParameter("email");
			
			String correzione = null;
			
			
			
			
			// controllo se la mail ha una sola chiocciola
			int c = 0;
			for(int i = 0; i<email.length(); i++) {
				if (email.charAt(i)== '@'){
					c +=1;
				}
			}
			
			// controllo se la mail ha un solo '+'
			int piu = 0;
			for(int i = 0; i<email.length(); i++) {
				if (email.charAt(i)== '+'){
					piu +=1;
				}
			}
			
			//controllo se il numero contiene lettere
			try
			{
			    int num = Integer.parseInt(telefono);
			    correzione = "corretto";
			}
			catch (NumberFormatException e)
			{
			     System.out.println ("La stringa NON contiene un intero valido");
			}
			
			
			
			
			if(c<=1 && piu<1 && correzione.equals("corretto") && nome.length() !=0 && nome!=null) {
				Utente user = new Utente();
				user.setNome(nome);
				user.setCognome(cognome);
				user.setTelefono(telefono);
				user.setEmail(email);
				
				req.getSession().setAttribute("userBean", user);	
				res.sendRedirect("conferma.jsp");
				
			}
			else {
				req.getSession().setAttribute("error", "hai sbagliato ad inserire i dati");
				res.sendRedirect("login2.jsp");
			}
			
		}
}
			
			
			
			
//			if(name.equals("giacomo") && pass.equals("ciao")) 
//				res.getWriter().append("ti sei loggato");
//			else
//				res.getWriter().append("login failed");
//
//			}
			
	


