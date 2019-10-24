package it.beije.malang.web;


import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.beije.malang.web.ConnectionFactory;
import it.beije.malang.web.Utente;


/**
 * Servlet implementation class Control
 */
@WebServlet("/Control")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Control() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Prendi i dati dal form
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		
		//Controlla i dati ricevuti
		
		//Crea il Bean con i dati ricevuti in sessione
		Utente u = new Utente();
		u.setNome(nome);
		u.setCognome(cognome);
		u.setEmail(email);
		u.setTelefono(telefono);
		
		//Apri la sessione e inserici il bean e vai nella pagina di riepilogo
		request.getSession().setAttribute("userBean", u);
		response.sendRedirect("Confirm.jsp");
		
	
	}
}
