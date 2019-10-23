package it.beije.malang.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet 
 * Per la gestione del login con rindirizzamento in funzione dei casi
 */
@WebServlet("/servlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * questo costruttore sar� chiamato solo la prima volta (scope application)
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ricupera user e pw passati in parametro
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		// Se i parametri non sono nulli stampa i parametri ricevuti sulla pagina home2.jsp sulla quale rindirizza l'utente 
		if (username != null && username.equalsIgnoreCase("pippo")
			&& password != null && password.equalsIgnoreCase("pluto")) {
			Utente utente = new Utente();
			utente.setNome("Pippo");
			utente.setCognome("Pluto");
			request.getSession().setAttribute("user", utente);			
			//response.sendRedirect("home.jsp");
			response.sendRedirect("home2.jsp");
			
			//Altrimenti stampa un msg di errore sulla pagina di login.jsp
		} else {
			request.getSession().setAttribute("error", "CREDENZIALI ERRATE");;
			response.sendRedirect("login.jsp");
		}
	}

}
