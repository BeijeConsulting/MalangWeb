package it.beije.malang.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/servlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * questo costruttore sarà chiamato solo la prima volta (scope application)
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		Statement stmt = null;
		ResultSet rs = null;
		Connection conn = null;
		String query = "SELECT * FROM rubrica";
		try {
			conn = ConnectionDatabase.getConnection();
			stmt = conn.createStatement();
			 rs = stmt.executeQuery(query);
			 while(rs.next()) {
					response.getWriter().append(rs.getString("cognome"));
					response.getWriter().append(" ").append(rs.getString("nome")).append(" ").append("<br>");
				}
		}catch(SQLException sqlE) {
			sqlE.printStackTrace();
		}catch(ClassNotFoundException cnfE) {
			cnfE.printStackTrace();
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if (username != null && username.equalsIgnoreCase("pippo")
			&& password != null && password.equalsIgnoreCase("pluto")) {
			Utente utente = new Utente();
			utente.setNome("Pippo");
			utente.setCognome("Pluto");
			request.getSession().setAttribute("user", utente);			
			//response.sendRedirect("home.jsp");
			response.sendRedirect("home2.jsp");
		} else {
			request.getSession().setAttribute("error", "CREDENZIALI ERRATE");;
			response.sendRedirect("login.jsp");
		}
	}

}
