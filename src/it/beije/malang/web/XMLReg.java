package it.beije.malang.web;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class XMLReg {
	static int iRows=0;
public static void addXMLContact(String cognome, String nome, String email, String telefono) throws IOException, SAXException {
			

			try {
				DocumentBuilderFactory docFactory = DocumentBuilderFactory.newInstance();
				DocumentBuilder docBuilder = docFactory.newDocumentBuilder();
				Document document = docBuilder.parse("C:\\temp\\XMLContainer.xml");
				
				// Modify DOM tree (simple version)

				 // staff elements
					Element staff = document.createElement("Contatto");

					// set attribute to staff element
					Attr attr = document.createAttribute("id");
					attr.setValue(String.valueOf(++iRows));
					staff.setAttributeNode(attr);

					// shorten way
					// staff.setAttribute("id", "1");

					// firstname elements
					Element firstname = document.createElement("Cognome");
					firstname.appendChild(document.createTextNode(cognome));
					staff.appendChild(firstname);

					// lastname elements
					Element lastname = document.createElement("Nome");
					lastname.appendChild(document.createTextNode(nome));
					staff.appendChild(lastname);

					// nickname elements
					Element nickname = document.createElement("Email");
					nickname.appendChild(document.createTextNode(email));
					staff.appendChild(nickname);

					// salary elements
					Element salary = document.createElement("Telefono");
					salary.appendChild(document.createTextNode(telefono));
					staff.appendChild(salary);
				

				// write the content into xml file
				TransformerFactory transformerFactory = TransformerFactory.newInstance();
				Transformer transformer = transformerFactory.newTransformer();
				DOMSource source = new DOMSource(document);
				StreamResult result = new StreamResult(new File("C:\\temp\\XMLContainer.xml"));

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

}
