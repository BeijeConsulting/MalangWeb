package it.beije.malang.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class loadUtente
 */
@WebServlet("/loadUtente")
public class loadUtente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loadUtente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(request.getParameter("value").equals("Registrati")) {
		Statement stmt = null;
		//ResultSet rs = null;
		int r = 0;
		Connection conn = null;
		//hidden
		String nome = request.getParameter("nome");
		//userBean
		Utente utente = (Utente) request.getSession().getAttribute("userBean");
		String query = "INSERT INTO rubrica VALUES (null, '"+ utente.getCognome() +"', '"+  nome +"', ' "+ utente.getEmail()+"', '"+ utente.getTelefono() +"')";
		try {
			conn = ConnectionDatabase.getConnection();
			stmt = conn.createStatement();
			r = stmt.executeUpdate(query);
		
		}catch(SQLException sqlE) {
			sqlE.printStackTrace();
		}catch(ClassNotFoundException cnfE) {
			cnfE.printStackTrace();
		}
		}
		//Metodo con hidden
		//String nome = request.getParameter("nome");
		
		//metodo con Bean utente
		//Utente utente = (Utente) request.getSession().getAttribute("userBean");
		//String cognome = utente.getCognome();

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
