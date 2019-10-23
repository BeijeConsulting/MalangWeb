package it.beije.malang.web;

import java.util.*;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

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
		List<String> rows = FileManager.readFileAsList("C:\\Esercizi\\generato.csv");
		for(String row : rows)
			response.getWriter().append(row).append("</br>\n");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String name = request.getParameter("name");
			String surname = request.getParameter("surname");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			
			User u = new User();
			u.setName(name);
			u.setSurname(surname);
			u.setEmail(email);
			u.setPhone(phone);
			
			request.getSession().setAttribute("userBean", u);
			response.sendRedirect("confirm.jsp");
		}
		catch(NullPointerException ex) {
			response.sendRedirect("index.jsp?error=INVALID_FIELDS");
		}
		
//		String name = request.getParameter("name");
//		String password = request.getParameter("surname");
//		String email = request.getParameter("email");
//		String phone = request.getParameter("phone");
//		
//		if (username != null && username.equalsIgnoreCase("pippo")
//			&& password != null && password.equalsIgnoreCase("pluto")) {
//			Utente utente = new Utente();
//			utente.setNome("Pippo");
//			utente.setCognome("Pluto");
//			request.getSession().setAttribute("user", utente);			
//			//response.sendRedirect("home.jsp");
//			response.sendRedirect("home2.jsp");
//		} else {
//			request.getSession().setAttribute("error", "CREDENZIALI ERRATE");;
//			response.sendRedirect("login.jsp");
//		}
	}

}
