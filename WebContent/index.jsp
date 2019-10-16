<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%= "Prima JSP" %></title>
</head>
<body>

<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>

<% String nome = request.getParameter("nome"); %>

<%= "CIAO " + nome %><br>

<%
/* out.print("ADDIO " + nome);
System.out.print("ADDIO " + nome);
 */
 
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