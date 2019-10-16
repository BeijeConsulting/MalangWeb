package it.beije.malang.web;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet("/CSV")
public class CSV extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CSV() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		File f = new File ("C:\\temp\\testo.txt");
		FileReader fr = new FileReader(f);
		BufferedReader br = new BufferedReader(fr);
		StringTokenizer tokenizer = null;
		StringBuilder sb = new StringBuilder();
		while (br.ready())
		{
			tokenizer = new StringTokenizer(br.readLine(), ";");
			sb.append(tokenizer.nextToken()).append(";");
			sb.append(tokenizer.nextToken()).append(";");
			sb.append(tokenizer.nextToken()).append(";");
			sb.append(tokenizer.nextToken()).append(";");
			sb.append("\n");
			
		}
		response.getWriter().append(sb.toString());
		br.close();
	}

}