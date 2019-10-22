package it.beije.malang.web;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.beije.malang.database.entities.Contatto; 
import it.beije.malang.FromDbToCsv;
/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/servletbean")
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
		String nome = request.getParameter("name");
		String cognome = request.getParameter("surname");
		String email = request.getParameter("email");
		String telefono = request.getParameter("telefono");
		
		Contatto contatto = new Contatto();
		contatto.setNome(nome);
		contatto.setCognome(cognome);
		contatto.setNome(email);
		contatto.setNome(telefono);
			request.getSession().setAttribute("user", contatto);			
			//response.sendRedirect("home.jsp");
		List<Contatto> contatti = new ArrayList<>();
		contatti.add(contatto);
		FromDbToCsv.writeCsv(contatti);
		
		
	}
}

