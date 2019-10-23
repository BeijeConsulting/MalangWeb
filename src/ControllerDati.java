

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerDati
 */
@WebServlet("/ControllerDati")
public class ControllerDati extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerDati() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	String Nome = request.getParameter("nome") != null ? request.getParameter("nome") : "";
	String Cognome = request.getParameter("cognome") != null ? request.getParameter("cognome") : "";
	String Email = request.getParameter("email") != null ? request.getParameter("email") : "";
	String Password = request.getParameter("password") != null ? request.getParameter("password") : "";
	String Cellulare = request.getParameter("cellulare") != null ? request.getParameter("cellulare") : "";
	
	//Controllo se i campi sono tutti pieni!
	if(Nome.length() == 0 || Cognome.length() == 0 || Email.length() == 0 || Password.length() == 0 || Cellulare.length() == 0) {
		response.sendRedirect("form.jsp?status=campi_vuoti");
		return;
	}
	//controllo se l'email è valida
    if(!Controlla_Email(Email)) {
		response.sendRedirect("form.jsp?status=email");
		return;
    }
    //controlla numero di cellulare
    if(!Controlla_Numero(Cellulare)) {
		response.sendRedirect("form.jsp?status=cellulare");
		return;

    }
    
    //se tutto è andato a buon fine :::
	response.sendRedirect("riepilogo.jsp?nome="
			+Nome+
			"&cognome="+
			Cognome+"&email="+
			Email+"&password="+
			Password+"&cellulare="+Cellulare);
 
    
    
    
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public boolean Controlla_Email(String email) {
		String regex = "^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$";
		return email.matches(regex);
	}
	
	public boolean Controlla_Numero(String num) {
		boolean x = true;
		num = num.replace(" ", "");
		x = num.charAt(0) == '+' ? true : false;
		x = num.length() == 13 ? true : false;
	return x;	
	}
	

}
