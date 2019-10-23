import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Controller() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		if(request.getParameter("nome") != null) {
			String Nome = request.getParameter("nome") != null ? request.getParameter("nome") : "";
			String Cognome = request.getParameter("cognome") != null ? request.getParameter("cognome") : "";
			String Email = request.getParameter("email") != null ? request.getParameter("email") : "";
			String Password = request.getParameter("password") != null ? request.getParameter("password") : "";
			String Cellulare = request.getParameter("cellulare") != null ? request.getParameter("cellulare") : "";
			response.sendRedirect("form.jsp?nome="
					+Nome+
					"&cognome="+
					Cognome+"&email="+
					Email+"&password="+
					Password+"&cellulare="+Cellulare+
					"&status=modifica");
			return;
		}
		
		response.sendRedirect("form.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
