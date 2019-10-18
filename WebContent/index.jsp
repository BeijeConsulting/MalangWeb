<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="it.beije.malang.database.entities.Contatto" %>
<%@ page import="it.beije.malang.FromCsvToDb" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%= "Prima JSP modificata da vitto" %></title>
</head>
<body>

 <img src="jay.jpg" alt="Il mitico presidente del foggia">

<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>

<% String nome = request.getParameter("nome"); %>

<%= "CIAO " + nome %><br>


/* out.print("ADDIO " + nome);
System.out.print("ADDIO " + nome);
 */
 <pre>
<% List<Contatto> contatti = FromCsvToDb.ReadCsv(); 
	for (Contatto contatto: contatti){
	out.println(contatto.toString() + "</br>");
	}
%>
</pre>
<%
if (nome == null) {
%>
<p>2 + 2 = <%= 2 + 2 %></p>
<% } else { %>
piacere di conoscerti
<% } %>

<% for (char c = 'a'; c <= 'z'; c++) { %>
	<p><%= c %></p>
<% } %>

</body>
</html>