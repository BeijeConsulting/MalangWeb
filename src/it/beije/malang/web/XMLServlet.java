package it.beije.malang.web;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * Servlet implementation class XMLServlet
 */
@WebServlet("/XMLServlet")
public class XMLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XMLServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		 try {

				File fXmlFile = new File("C:\\temp\\File2.xml");
				DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
				Document doc = dBuilder.parse(fXmlFile);
						
				//optional, but recommended
				//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
				doc.getDocumentElement().normalize();

				System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
						
				NodeList nList = doc.getElementsByTagName("Contatto");
						
				System.out.println("----------------------------");
				
				StringBuilder builder = new StringBuilder();

				for (int temp = 0; temp < nList.getLength(); temp++) {

					Node nNode = nList.item(temp);
							
					System.out.println("\nCurrent Element :" + nNode.getNodeName());
							
					if (nNode.getNodeType() == Node.ELEMENT_NODE) {

						Element eElement = (Element) nNode;

						
						builder.append("ID: ").append(eElement.getElementsByTagName(("ID")).item(0).getTextContent()).append("\n");
						builder.append("Cognome: ").append(eElement.getElementsByTagName("Cognome").item(0).getTextContent()).append("\n");
						builder.append("Nome: ").append(eElement.getElementsByTagName("Nome").item(0).getTextContent()).append("\n");
						builder.append("Email: ").append(eElement.getElementsByTagName("Email").item(0).getTextContent()).append("\n");
						builder.append("Telefono: ").append(eElement.getElementsByTagName("Telefono").item(0).getTextContent()).append("\n");
						builder.append("\n").append("\n");
					}
				}
				response.getWriter().append(builder.toString());
			    } catch (Exception e) {
				e.printStackTrace();
			    }
		 
			  }

	}

