package it.beije.malang.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.beije.malang.web.Contatto;
import it.beije.malang.web.ParserContatto;
/**
 * Servlet implementation class FirstTestServlet
 */
@WebServlet("/FirstTestServlet")
public class FirstTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FirstTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//Per esportare la lista  dei contatti dentro il file contatti.xml sulla pagina del FirstTestServlet
		String filename = request.getParameter("filename");
		List<Contatto> contatti = ParserContatto.readFile("C:\\temp\\contatti1.xml");
		StringBuilder builder = new StringBuilder();
		for(Contatto c: contatti) { // cicla sui contatti per prendere solo nome e cognome
			builder.append(c.getNome()).append(' ').append(c.getCognome()).append(' ').append(c.getEmail()).append('\n');
		}
		response.getWriter().append(builder);
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
