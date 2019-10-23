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
<BIG> Registrati anche tu su phrenqlynjoseph.it</BIG>
<style>
input, select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<div>
<jsp:useBean id="userBean" class="it.beije.malang.database.entities.Contatto" scope="session" />
<%
String name = userBean.getNome() != null ? userBean.getNome() : "";
String surname = userBean.getCognome();
if (surname == null) {
	surname = "";
}

String email = userBean.getEmail();
if (email == null) {
	email = "";
}

String phone = userBean.getTelefono();
if (phone == null) {
	phone = "";
}
%>
  <form action="ConfermaContatto.jsp">
    <label for="fname">Name</label>
    <input type="text"  name="name" value="<%= name %>">

    <label for="lname">Surname</label>
    <input type="text" name="surname" value="<%= surname %>">
    
    <label for="lname">Email</label>
    <input type="text" name="email" value="<%= email %>">
    
    <label for="lname">Telefono</label>
    <input type="text" name="phone" value="<%= phone %>">

    <input type="submit" value="Invio">
  </form>
</div>

<%-- 
<form action="auth.jsp" method="get">
	NOME : <input type="text" name="param_nome" value="<%= name %>"><br>
	COGNOME : <input type="text" name="param_cognome" value="<%= surname %>"><br>
	<input type="submit" value="ACCEDI">
</form>
--%>
<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>

</body>
</html>