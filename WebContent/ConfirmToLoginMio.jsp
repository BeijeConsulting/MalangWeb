<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="it.beije.malang.web.Utente"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>loginMio</title>
</head>
<body>

<jsp:useBean id="user" class="it.beije.malang.web.Utente" scope="session" />
Nome: <jsp:getProperty name="user" property="nome"/><br>
Cognome: <jsp:getProperty name="user" property="cognome"/><br>
Email: <jsp:getProperty name="user" property="email"/><br><br>
 
<form action="insertServlet"  method="post">
<input type="submit" name="conferma" value="conferma">
 </form> 
<form action="loginMio.jsp"  method="post">
 
 <input type="submit" value="rindirizza">
  
  
  
 
</form> 



</body>
</html>