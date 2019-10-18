<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>

<html>
<head>
<meta charset="ISO-8859-1">
<title><%= "Prima JSP" %></title>
</head>
<body>
<table>
<tr>
    <th>NOMI</th>
    <th>COGNOMI</th>
    <th>PAESE</th>
  </tr>
  <tr>
    <td>Nicola</td>
    <td>consuelo</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Francesco</td>
    <td>Donatellis</td>
    <td>Napoli</td>
  </tr>
  <tr>
    <td>Francessco</td>
    <td>Corbosiero</td>
    <td>italia</td>
  </tr>
  <tr>
    <td>Paola</td>
    <td>Vergani</td>
    <td>UK</td>
  </tr>
  <tr>
    <td>Filippo</td>
    <td>Colombo</td>
    <td>Canada</td>
  </tr>
  <tr>
  <td>Sara</td>
    <td> Rovelli</td>
    <td>Italy</td>
  </tr>
</table>

	

<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>


<% String cognome = request.getParameter("cognome"); %>

<% String nome = request.getParameter("nome"); %>

<%= "CIAO " + nome %><br>



<%="Giulia"+ cognome  %>
<!DOCTYPE html>
<html>
<body>

<?php
echo strlen("Hello world!");
?> 
 
</body>
</html>
/* out.print("ADDIO " + nome);
System.out.print("ADDIO " + nome);
 */
 
if (nome == null) {
bene
<p>2 + 2 = <%= 2 + 2 %></p>
<% //} else { %>
//piacere di conoscerti
<% //} %>


</body>
</html>