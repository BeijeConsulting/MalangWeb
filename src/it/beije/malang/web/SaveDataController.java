package it.beije.malang.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.beije.malang.database.ConnectionFactory;

/**
 * Servlet implementation class SaveDataController
 */
@WebServlet("/savedata")
public class SaveDataController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveDataController() {
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
		
		nome=request.getParameter("nome")!=null?request.getParameter("nome"):"";
		cognome=request.getParameter("cognome")!=null?request.getParameter("cognome"):"";
		email=request.getParameter("email")!=null?request.getParameter("email"):"";
		telefono=request.getParameter("telefono")!=null?request.getParameter("telefono"):"";
		
		try {
			Connection conn=ConnectionFactory.getConnection();
			Statement stmt=conn.createStatement();
			if (stmt.execute(new Utente(nome,cognome,email,telefono).getInsertQuery()))
				response.sendRedirect("resultview.jsp?result=errore");
			else
				response.sendRedirect("resultview.jsp?result=ok");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
