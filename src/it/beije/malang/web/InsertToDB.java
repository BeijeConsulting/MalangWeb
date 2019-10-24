package it.beije.malang.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.beije.malang.web.ConnectionFactory;

import java.sql.*;

/**
 * Servlet implementation class InsertToDB
 */
@WebServlet("/InsertToDB")
public class InsertToDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertToDB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
			Connection con = null;
			try {
				
				//Prendi il bean dalla sessione
				Utente u = (Utente)request.getSession().getAttribute("userBean");
				
				String nome = u.getNome();
				String cognome = u.getCognome();
				String email = u.getEmail();
				String telefono = u.getTelefono();
				
				//Scrivi il Bean su database
				Class.forName("com.mysql.cj.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/malang?serverTimezone=CET", "root", "Marcomattia1");
				Statement stmt = con.createStatement();
			
				String query="INSERT INTO jsp_utenti (nome,cognome,email,telefono) VALUE ('" + nome + "','"+ cognome +"','" + email + "','"+ telefono +"')";
				stmt.executeUpdate(query);
				
				//Vai in una pagina dove ti dice che va tutto bene
				response.sendRedirect("ok.jsp");
			
			}catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
				//Vai in una pagina dove dici che c'è stato un problema
				response.sendRedirect("sbagliato.jsp");
			}
		}	


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
