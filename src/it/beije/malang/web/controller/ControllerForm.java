package it.beije.malang.web.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.beije.malang.web.Utente;

/**
 * Servlet implementation class ControllerForm
 */
@WebServlet("/ControllerForm")
public class ControllerForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerForm() {
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
		
		if (nome.equals("") || nome.equals(null) ||
				cognome.equals("") || cognome.equals(null)
				) {
				Utente utente = new Utente();
				utente.setNome("Pippo");
				utente.setCognome("Pluto");
				request.getSession().setAttribute("userBean", utente);			
				//response.sendRedirect("home.jsp");
				response.sendRedirect("home2.jsp");
			} else {
				request.getSession().setAttribute("error", "CREDENZIALI ERRATE");;
				response.sendRedirect("login.jsp");
			}


		doGet(request, response);
	}

}
