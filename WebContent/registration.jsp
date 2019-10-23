<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="it.beije.malang.database.*" %>  
  <%@ page import="java.sql.SQLException" %> 
  <%@ page import="java.sql.Statement" %> 
  <%@ page import="java.sql.DriverManager" %> 
  <%@page import="it.beije.malang.web.Utente"%>


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
<form action="loginmio.jsp" method="get"<%//per inviare/prendere i dati alla pagina login in modo tale che se mi registro, dopo sono già loggato %>>
  username:<br><input type="text" name="USER" required ><br>
  email:<br><input type="email" name="EMAIL"><br>
  password:<br><input type="password" name="PSSW" required ><br>
  	<input type="submit" value="accedi" >
</form> 
</div>


</body>
</html>