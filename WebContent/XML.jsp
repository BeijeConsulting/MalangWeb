<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.io.File"%>
    <%@ page import= "java.io.IOException"%>
    <%@ page import= "javax.servlet.ServletException"%>
    <%@ page import= "javax.servlet.annotation.WebServlet"%>
    <%@ page import= "javax.servlet.http.HttpServlet"%>
    <%@ page import= "javax.servlet.http.HttpServletRequest"%>
	<%@ page import= "javax.servlet.http.HttpServletResponse"%>
    <%@ page import= "javax.xml.parsers.DocumentBuilder"%>
    <%@ page import= "javax.xml.parsers.DocumentBuilderFactory"%>
	<%@ page import= "org.w3c.dom.Attr"%>
	<%@ page import= "org.w3c.dom.Document"%>
	<%@ page import= "org.w3c.dom.Element"%>
    <%@ page import= "org.w3c.dom.Document"%>
    <%@ page import= "org.w3c.dom.Element"%>
    <%@ page import= "org.w3c.dom.Node"%>
    <%@ page import= "org.w3c.dom.NodeList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servlet</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BeijeConsulting</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="index.jsp">Home</a></li>
      <li class="active"><a href="CSV.jsp">CSV</a></li>
      <li><a href="XML.jsp">XML</a></li>
      <li><a href="DB.jsp">DATABASE</a></li>
    </ul>
  </div>
</nav>

<% try {

	File fXmlFile = new File("C:\\temp\\File2.xml");
	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	Document doc = dBuilder.parse(fXmlFile);
			
	//optional, but recommended
	//read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
	doc.getDocumentElement().normalize();

	System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
			
	NodeList nList = doc.getElementsByTagName("Contatto");
	
	Element ele = doc.createElement("rubrica");
	doc.appendChild(ele);
	out.print(doc);
			
	System.out.println("----------------------------");
	
	StringBuilder builder = new StringBuilder();
	int iRows = 0;
	for (int temp = 0; temp < nList.getLength(); temp++) {

		Node nNode = nList.item(temp);
				
		System.out.println("\nCurrent Element :" + nNode.getNodeName());
				
		if (nNode.getNodeType() == Node.ELEMENT_NODE) {
			++iRows;
			Element eElement = (Element) nNode;
			// Row
			Element sRows = doc.createElement("Contatto");
			ele.appendChild(sRows);


			// CustomerID
			Element sCustomerID = doc.createElement("ID");
			sCustomerID.appendChild(doc.createTextNode(eElement.getElementsByTagName(("ID")).item(0).getTextContent()));
			sRows.appendChild(sCustomerID);
			
			// Cognome
			Element sCognome = doc.createElement("Cognome");
			sCognome.appendChild(doc.createTextNode(eElement.getElementsByTagName("Cognome").item(0).getTextContent()));
			sRows.appendChild(sCognome);
			
			// Email
			Element sNome = doc.createElement("Nome");
			sNome.appendChild(doc.createTextNode(eElement.getElementsByTagName("Nome").item(0).getTextContent()));
			sRows.appendChild(sNome);
			
			Element sIndirizzo = doc.createElement("Email");
			sIndirizzo.appendChild(doc.createTextNode(eElement.getElementsByTagName("Email").item(0).getTextContent()));
			sRows.appendChild(sIndirizzo);
			
			Element sNumero = doc.createElement("Telefono");
			sNumero.appendChild(doc.createTextNode(eElement.getElementsByTagName("Telefono").item(0).getTextContent()));
			sRows.appendChild(sNumero);
			
			out.print(sRows.toString());
			
			
		/* 	builder.append("ID: ").append(eElement.getElementsByTagName(("ID")).item(0).getTextContent()).append("\n");
			builder.append("Cognome: ").append(eElement.getElementsByTagName("Cognome").item(0).getTextContent()).append("\n");
			builder.append("Nome: ").append(eElement.getElementsByTagName("Nome").item(0).getTextContent()).append("\n");
			builder.append("Email: ").append(eElement.getElementsByTagName("Email").item(0).getTextContent()).append("\n");
			builder.append("Telefono: ").append(eElement.getElementsByTagName("Telefono").item(0).getTextContent()).append("\n");
			builder.append("\n").append("\n"); */
		}
	}
				} catch (Exception e) {
				e.printStackTrace();
			    }
		 
%>

</body>
</html>