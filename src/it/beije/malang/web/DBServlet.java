package it.beije.malang.web;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

/**
 * Servlet implementation class DBServlet
 */
@WebServlet("/DBServlet")
public class DBServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DBServlet() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		try {
		 	   
    	    // Connect Database 
	   		Connection connect = null;
	   		Statement s = null;

			Class.forName("com.mysql.cj.jdbc.Driver");
			connect =  DriverManager.getConnection("jdbc:mysql://localhost:3306/malang?serverTimezone=CET", "root", "Beije10");
			
			s = connect.createStatement();
			
			String sql = "SELECT * FROM rubrica";
			
			ResultSet rec = s.executeQuery(sql);
			

			String strPath = "rubrica.xml";

			DocumentBuilderFactory documentFactory = DocumentBuilderFactory
					.newInstance();
			DocumentBuilder documentBuilder = documentFactory
					.newDocumentBuilder();
			// define root elements
			Document doc = documentBuilder.newDocument();
			

			Element ele = doc.createElement("rubrica");
			doc.appendChild(ele);

			int iRows = 0;
			while((rec!=null) && (rec.next()))
            {   
				
				++iRows;
				
				// Row
				Element sRows = doc.createElement("Contatto");
				ele.appendChild(sRows);
				
				// Attributes
				Attr sAttrID = doc.createAttribute("id");
				sAttrID.setValue(String.valueOf(iRows));
				sRows.setAttributeNode(sAttrID);


				// CustomerID
				Element sCustomerID = doc.createElement("ID");
				sCustomerID.appendChild(doc.createTextNode(rec.getString("id")));
				sRows.appendChild(sCustomerID);
				
				// Cognome
				Element sCognome = doc.createElement("Cognome");
				sCognome.appendChild(doc.createTextNode(rec.getString("cognome")));
				sRows.appendChild(sCognome);
				
				// Email
				Element sNome = doc.createElement("Nome");
				sNome.appendChild(doc.createTextNode(rec.getString("nome")));
				sRows.appendChild(sNome);
				
				Element sIndirizzo = doc.createElement("Email");
				sIndirizzo.appendChild(doc.createTextNode(rec.getString("email")));
				sRows.appendChild(sIndirizzo);
				
				Element sNumero = doc.createElement("Telefono");
				sNumero.appendChild(doc.createTextNode(rec.getString("telefono")));
				sRows.appendChild(sNumero);
	
				
            }	


			// creating and writing to xml file
			TransformerFactory tff = TransformerFactory
					.newInstance();
			Transformer tf = tff.newTransformer();
			DOMSource domSource = new DOMSource(doc);
			StreamResult streamResult = new StreamResult(new File(strPath));

			tf.setOutputProperty(
					"{http://xml.apache.org/xslt}indent-amount", "2");
			tf.setOutputProperty(OutputKeys.INDENT, "yes");

			tf.transform(domSource, streamResult);

			System.out.println("XML file created!");

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	}

