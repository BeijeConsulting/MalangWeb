package it.beije.malang.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Controllo
 */
@WebServlet("/Controllo")
public class Controllo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controllo() {
        super();
        
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nome = request.getParameter("nome").trim();
		String cognome = request.getParameter("cognome").trim();
		String email = request.getParameter("email").trim();
		String telefono = request.getParameter("telefono").trim();
		
		Utente utente = new Utente();
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setEmail(email);
		utente.setTelefono(telefono);
		request.getSession().setAttribute("userBean", utente);	
		
		if(nome.equals(null) || nome.equals("")||//ritorno al file principale
				cognome.equals(null) || cognome.equals("")||
				email.equals(null) || email.contentEquals("") || 
				telefono.equals(null) || telefono.contentEquals("") ) {
			 	request.getSession().setAttribute("error", "Manca uno dei campi");;
			 	response.sendRedirect("Principale.jsp");
		}else {
			
		}
	
		
		
		
			
			
		// TODO Auto-generated method stub
			
		
		/*
		 * String nome1 = request.getNome("nome"); String cognome1 =
		 * request.getCognome("cognome"); String email1 =request.getEmail("email");
		 * String telefono1 =request.getTelefono("telefono"); if (nome1 !=null &&
		 * cognome1 !=null ) utente1.setNome(); utente1.setCognome();
		 */
	
		
		
		doGet(request, response);
	}

}
