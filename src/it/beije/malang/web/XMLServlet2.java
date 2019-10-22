package it.beije.malang.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xml.sax.SAXException;

/**
 * Servlet implementation class XMLServlet2
 */
@WebServlet("/XMLServlet2")
public class XMLServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XMLServlet2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Utente u = new Utente();
			u=(Utente) request.getSession().getAttribute("userBean");
			
			XMLReg.addXMLContact(u.getCognome(), u.getNome(),
								 u.getEmail(),u.getTelefono());
		} catch (SAXException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("registrato.jsp");
		
	}
}