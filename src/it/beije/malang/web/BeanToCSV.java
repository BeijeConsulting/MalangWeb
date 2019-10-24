package it.beije.malang.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class TestServlet 
 * Per la gestione del login con rindirizzamento in funzione dei casi
 */
@WebServlet("/insertServlet")
public class BeanToCSV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * questo costruttore sarà chiamato solo la prima volta (scope application)
     */
    public BeanToCSV() {
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
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		// Se i parametri non sono nulli stampa i parametri ricevuti sulla pagina home2.jsp sulla quale rindirizza l'utente 
		if (request.getParameter("conferma") != null )
			{
			Utente utente = new Utente();
			utente.setNome(nome);
			utente.setCognome(cognome);
			utente.setEmail(email);
			request.getSession().setAttribute("user", utente);	
			response.sendRedirect("ConfirmToLoginMio.jsp");
			
			File filename = new File("C:\\temp\\prova1.txt");
			
			
			while ( filename.exists());
				{
					List<String[]> writer = ScriviCSV.scrivi( utente, nome, cognome, email, filename);
	               request.getSession().setAttribute("conferma" , writer);
	               response.sendRedirect("ConfirmToLoginMio.jsp");
	              
		
			} 
			
			//Altrimenti stampa un msg di errore sulla pagina di login.jsp
		} else {
			request.getSession().setAttribute("error", "CREDENZIALI ERRATE");;
			response.sendRedirect("loginMio.jsp");
		}
	}

}
