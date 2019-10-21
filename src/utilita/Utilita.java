package utilita;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.xml.sax.SAXException;


public class Utilita {
	
	private static String role1 = null;
	private static String role2 = null;
	private static String role3 = null;
	private static String role4 = null;
	private ArrayList<String> rolev;


	
	public static void condb() {
		try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/malang?serverTimezone=CET","root","Beije06");
		//System.out.println("conenction ?"+ !conn.isClosed());
		
		
		}catch(ClassNotFoundException cnfex) {
			cnfex.printStackTrace();
		}catch(SQLException sqlex){
			sqlex.printStackTrace();
			}
	}
	
	public static void letturacsv(String dirfile) {	
		FileReader fileReader = null;
		try {
			fileReader = new FileReader(dirfile);
			//System.out.println("letto");
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BufferedReader bReader = new BufferedReader(fileReader);
	}
	
	public static void scritturacsv(String dirfile) {
		FileWriter fileWriter = null;
		try {
			fileWriter = new FileWriter(dirfile);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		BufferedWriter bWriter = new BufferedWriter(fileWriter);
	}
	
	
	
	public static void letturaxml(String dirfile) {
		
		DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();

	    // Instanziamo un nuovo Documento
	        DocumentBuilder builder = null;
			try {
				builder = factory.newDocumentBuilder();
			} catch (ParserConfigurationException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}

	    // Carichiamo il nostro documento da un file (assicuratevi sia nel path giusto)
	        Document doc = null;
			try {
				doc = builder.parse(dirfile);
			} catch (SAXException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	    // Prendiamo il primo nodo - come suggerisce il metodo - la radice
	        Node root = doc.getFirstChild();
	        
	     // Iteriamo per ogni nodo presente nella lista dei nodi della radice
	        for (int i = 0; i < root.getChildNodes().getLength(); i++) {
	    // Sapendo che il primo nodo è il nodo libro procediamo iterando nei suoi nodi figli
	            Node libro = root.getChildNodes().item(i);
	    
	    //Se il nodo è un Elemento allora ne stampiamo il nome, il testo contenuto e gli attributi se presenti
	            for (int j = 0; j < libro.getChildNodes().getLength(); j++) {
	                Node element = libro.getChildNodes().item(j);
	                if (element.getNodeType() == Node.ELEMENT_NODE) {
	                    System.out.println("Nome dell'elemento: " + element.getNodeName() + " - Valore del testo = " + element.getTextContent());
	                    if (element.hasAttributes()) {
	                        for (int k = 0; k < element.getAttributes().getLength(); k++) {
	                            Node attribute = element.getAttributes().item(k);
	                            System.out.println("\tNome dell'attributo: " + attribute.getNodeName() + " - Valore del testo = " + attribute.getTextContent());
	                        }
	                    }
	                }
	                }
	        }
	}
	
	
	public static void scritturaxml(String xml,String root,String element,String... elementi) {
		try {
			DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
			DocumentBuilder docBuilder = docFactory.newDocumentBuilder();

			// root elements
			Document doc = docBuilder.newDocument();
			Element rootElement = doc.createElement(root);
			doc.appendChild(rootElement);

			// staff elements
			Element elemento = doc.createElement(element);
			rootElement.appendChild(elemento);

			// set attribute to staff element
			Attr attr = doc.createAttribute("id");
			attr.setValue("1");
			elemento.setAttributeNode(attr);

			// shorten way
			// staff.setAttribute("id", "1");

			// firstname elements
			Element firstname = doc.createElement(elementi[0]);
			firstname.appendChild(doc.createTextNode("yong"));
			elemento.appendChild(firstname);

			// lastname elements
			Element lastname = doc.createElement(elementi[1]);
			lastname.appendChild(doc.createTextNode("mook kim"));
			elemento.appendChild(lastname);

			// nickname elements
			Element nickname = doc.createElement(elementi[2]);
			nickname.appendChild(doc.createTextNode("mkyong"));
			elemento.appendChild(nickname);

			// salary elements
			Element salary = doc.createElement(elementi[3]);
			salary.appendChild(doc.createTextNode("100000"));
			elemento.appendChild(salary);
		
		
		TransformerFactory transformerFactory = TransformerFactory.newInstance();
		Transformer transformer = transformerFactory.newTransformer();
		DOMSource source = new DOMSource(doc);
		StreamResult result = new StreamResult(new File(xml));

		// Output to console for testing
		//StreamResult result = new StreamResult(System.out);

		transformer.transform(source, result);

		System.out.println("File saved!");

	} catch (ParserConfigurationException pce) {
		pce.printStackTrace();
	} catch (TransformerException tfe) {
		tfe.printStackTrace();
	}
}
		
	
	
	
	
	
	public static void main(String[] args) {
		
		
		//letturaxml("C://Users/Padawan06/Desktop/contatti.xml");
		//scritturaxml("C://Users/Padawan06/Desktop/cont.xml","nome ","elementi","elenco elemento","elenco elemento","elenco elemento","elenco elemento");
		
		
		
	}
	
	
	
	
}
