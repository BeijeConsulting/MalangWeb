package it.beije.malang.web;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ActionServlet
 */
@WebServlet("/actionServlet")
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActionServlet() {
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
		
		try {
			
			final String path = "C:\\Esercizi\\UserBean.csv";
			User u = (User)request.getSession().getAttribute("userBean");
			
			//TODO: fix FileManager
			List<String> list = new ArrayList<>();
			list.add(u.getName());
			list.add(u.getSurname());
			list.add(u.getEmail());
			list.add(u.getPhone());
			
			System.out.println(u);
			
			BufferedWriter writer = new BufferedWriter(new FileWriter(path));
			FileManager.writeRow(writer, list, ";");
			writer.close();
			
			request.getSession().setAttribute("ok", "OK");
			response.sendRedirect("index.jsp");
		}
		catch(Exception ex) {
			request.getSession().setAttribute("error", Error.UNKNOWN);
			response.sendRedirect("index.jsp");
		}
		
	}

}
