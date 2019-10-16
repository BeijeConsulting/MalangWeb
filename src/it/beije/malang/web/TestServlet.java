package it.beije.malang.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import it.beije.malang.Contatto;
/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.getWriter().append("contatti: \n");
		ArrayList<Contatto> lista = salvaInArray("C:\\Users\\Fulginiti\\Desktop\\ciao.txt");
		//response.getWriter().append(salvaInArray("C:\\Users\\Fulginiti\\Desktop\\ciao.txt"));
		for(Contatto c : lista) {
			response.getWriter().append(c.getNome() + " " + c.getCognome() + " " + c.getTelefono() + " " + c.getEmail() + "\n");
		}
		
		
	}
public static ArrayList<Contatto> salvaInArray(String pathFile) {
		
		File f = new File(pathFile);
		System.out.println(f.exists());
		
		 ArrayList<Contatto> utente = new ArrayList<Contatto>();
		
			try {
		
				FileReader fileReader = new FileReader(f);
				BufferedReader bufferedReader = new BufferedReader(fileReader);
				
				Contatto contatto = null;
				
				StringTokenizer tokenizer = null;
				
				while (bufferedReader.ready()) {
					tokenizer = new StringTokenizer(bufferedReader.readLine(), ";");
					contatto = new Contatto();
					contatto.setNome(tokenizer.nextToken());
					contatto.setCognome(tokenizer.nextToken());
					contatto.setTelefono(tokenizer.nextToken());
					contatto.setEmail(tokenizer.nextToken());
	
					utente.add(contatto);
					
				}
				
			bufferedReader.close();	
			fileReader.close();	
			
			
			
			}catch (FileNotFoundException FnFdExc){
				System.out.println("file non trovato");
			}catch (IOException IOExc) {
				System.out.println("IOException");
			}
			
			return utente;		
}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
