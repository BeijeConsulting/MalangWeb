package luoni1;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.beije.malang.database.entities.Contatto;
import it.beije.malang.FromCsvToDb;

/**
 * Servlet implementation class newServlet
 */
@WebServlet("/newServlet")
public class newServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public newServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<Contatto> contatti = FromCsvToDb.ReadCsv();
		System.out.println(contatti.size());
		StringBuilder sb = new StringBuilder();
		for(Contatto c : contatti) {
			sb.append(c.toString());
			System.out.println(sb.toString());
		}
		response.getWriter().append("Served at: ").append(request.getContextPath()).append(sb.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
