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

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("param_email");
		String telefono = request.getParameter("param_telefono");
		String nome = request.getParameter("param_nome");
		String cognome = request.getParameter("param_cognome");
		
		Utente u = new Utente();
		
		u.setCognome(cognome);
		u.setNome(nome);
		u.setEmail(email);
		u.setTelefono(telefono);
			
		email=ControlloDati.controlloMail(email);
		telefono=ControlloDati.controlloTel(telefono);
		
		if (email==null) {
			request.getSession().setAttribute("error", "EMAIL ERRATA");;
			response.sendRedirect("login2.jsp");
		}
		else if(telefono==null) {
			request.getSession().setAttribute("error", "TELEFONO NON VALIDO");;
			response.sendRedirect("login2.jsp");
		}
		else if (nome.equals("")||nome.contains("  ")||nome.equals(" ")) {
			request.getSession().setAttribute("error", "MANCA IL COGNOME O IL NOME");;
			response.sendRedirect("login2.jsp");	
		}
		else if (cognome.equals("")||cognome.contains("  ")||cognome.equals(" ")) {
			request.getSession().setAttribute("error", "MANCA IL COGNOME O IL NOME");;
			response.sendRedirect("login2.jsp");	
		}
		else {

			request.getSession().setAttribute("userBean", u);
			response.sendRedirect("auth2.jsp");
		}
		
		
	}

}
