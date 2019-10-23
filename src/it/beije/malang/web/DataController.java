package it.beije.malang.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DataController
 */
@WebServlet("/datacheck")
public class DataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DataController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String nome,cognome,telefono,email;
		
		nome=request.getParameter("nome");
		cognome=request.getParameter("cognome");
		email=request.getParameter("email");
		telefono=request.getParameter("telefono");
		
		if ((nome!=null && !nome.isEmpty())&&(cognome!=null && !cognome.isEmpty()))
			if (email!=null && email.indexOf('@')!=-1)
				for (char ch: telefono.toCharArray())
					if (((ch >= '0') && (ch <= '9')) || (ch==' ') || (ch=='+'))
					{
						response.sendRedirect("datarecap.jsp?nome="+nome+"&cognome="+cognome+"&email="+email+"&telefono="+telefono);
						return;
					}
			response.sendRedirect("inputdata.jsp?result=Controlla i campi inseriti");
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
