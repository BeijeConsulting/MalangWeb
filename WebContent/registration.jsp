<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="it.beije.malang.database.*" %>  
  <%@ page import="java.sql.SQLException" %> 
  <%@ page import="java.sql.Statement" %> 
  <%@ page import="java.sql.DriverManager" %> 
  <%@ page import="it.beije.malang.web.InRegistro" %> 


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>

</head>
<body>
<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>
<div align ="center"> 
<form action="loginmio.jsp" method="post"<%//per inviare i dati alla pagina login in modo tale che se mi registro, dopo sono già loggato %>>
  username:<br>
  <input type="text" name="USER" required >
  <br>
  email:<br>
  <input type="email" name="email">
  <br>
  password:<br>
  <input type="password" name="PSSW" required >
  <br><br>
  <input type="submit" value="accedi" >
  	
</form> 
</div>
<%
   String user = request.getParameter("USER");
   String password = request.getParameter("PSSW");
   String email = request.getParameter("email");
   InRegistro.DaArrayADb(user, email, password);
%>

</body>
</html>