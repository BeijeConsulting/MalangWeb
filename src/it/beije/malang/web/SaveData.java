
package it.beije.malang.web;
import java.io.*;

import java.net.*;
import javax.servlet.*;
import javax.servlet.http.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






@WebServlet("/SaveData")
public class SaveData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public SaveData() {
        super();
    }



	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Utente user = (Utente) request.getSession().getAttribute("userBean");

		String name = user.getNome();
		String cognome = user.getCognome();
		String telefono = user.getTelefono();
		String email = user.getEmail();
		request.getSession().setAttribute("userBean", user);
		
		System.out.println(name);
		
		 
		
		try
		{
		  PrintWriter out = response.getWriter();
		  String filename = "C:\\Users\\Padawan02\\Desktop\\serv.csv";
		  FileWriter fw = new FileWriter(filename);
		 
		  fw.append(name);
		  fw.append(',');
		  fw.append(cognome);
		  fw.append(',');
		  fw.append(telefono);
		  fw.append(',');
		  fw.append(email);
		  fw.append(',');
		  
		  
		  fw.flush();
		  fw.close();
		  out.println("<b>Csv file Successfully created.</b>");

		} 
		catch (Exception ex) {
		ex.printStackTrace ();
		}
		}

}		
