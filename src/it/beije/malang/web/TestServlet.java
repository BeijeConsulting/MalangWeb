package it.beije.malang.web;

import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
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
	
	private static final int MAX_CHARACTERS = 20;
	private static final int MAX_EMAIL_LENGTH = 50;
	private static final int MAX_PHONE_NUMBER_LENGTH = 16;
       
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
		List<String> rows = FileManager.readFileAsList("C:\\Esercizi\\generato.csv");
		for(String row : rows)
			response.getWriter().append(row).append("</br>\n");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String name = request.getParameter("name").trim();
			String surname = request.getParameter("surname").trim();
			String email = request.getParameter("email").trim();
			String phone = request.getParameter("phone").trim();
			Error err = null;
			
			
			if(!isValidName(name) || !isValidName(surname))
				err = Error.INVALID_FIELD;
			
			if(!isValidEmailAddress(email))
				err = Error.INVALID_EMAIL;
			
			if(!isValidPhoneNumber(phone))
				err = Error.INVALID_PHONE_NUMBER;
			
			if(err == null) {
				User u = new User();
				u.setName(name);
				u.setSurname(surname);
				u.setEmail(email);
				u.setPhone(phone);
				
				System.out.println(u);
				
				request.getSession().setAttribute("userBean", u);
				response.sendRedirect("confirm.jsp");
			}
			else {
				request.getSession().setAttribute("error", err);;
				response.sendRedirect("index.jsp");
			}
	
		}
		catch(NullPointerException ex) {
			ex.printStackTrace();
			request.getSession().setAttribute("error", Error.UNKNOWN);;
			response.sendRedirect("index.jsp");
		}
	}

	private boolean isValidName(String name) {
		if(name == null || name.isEmpty() || name.matches(".*\\d.*") || name.length() > MAX_CHARACTERS)
			return false;
		return true;
	}
	
	private boolean isValidEmailAddress(String email) {
		if(email == null || email.isEmpty() || email.length() > MAX_EMAIL_LENGTH)
			return false;
		
		if(email.contains("@") && email.contains("."))
			return true;
		else
			return false;
	}
	
	private boolean isValidPhoneNumber(String number) {
//		if(number == null || number.isEmpty() || number.length() > MAX_PHONE_NUMBER_LENGTH)
//			return false;
//		
//		for(char c : number.toCharArray())
//			if(c != '+' || c != ' ' || !Character.isDigit(c))
//				return false;
		
		return true;
	}
	
}
