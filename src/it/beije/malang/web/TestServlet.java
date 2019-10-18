package it.beije.malang.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.beije.malang.web.Contatto;
import it.beije.malang.web.importfile;
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
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ArrayList<Contatto> lista = importfile.salvaInArray("C:\\temp\\rubrica.txt");
		
		for(Contatto c : lista) {
			response.getWriter().append(c.getNome() + " " + c.getCognome() + " " + c.getTelefono() + " " + c.getEmail() + "\n");
			
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
