<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="it.beije.malang.web.ModificaUser"%>
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

<jsp:useBean id="userBean" class="it.beije.malang.web.ModificaUser" scope="session" />

<jsp:setProperty name="userBean" property="nome" param="nome"/>
<jsp:setProperty name="userBean" property="email" param="email"/>
<jsp:setProperty name="userBean" property="cognome" param="cognome"/>
<jsp:setProperty name="userBean" property="telefono" param="telefono"/>

<form action="checkmodifica.jsp" method="get"<%//per inviare/prendere i dati alla pagina login in modo tale che se mi registro, dopo sono già loggato %>>
  nome:<br><input type="text" name=nome required ><br>
  cognome:<br><input type="text" name="cognome" required ><br>
  email:<br><input type="email" name="email" required ><br>
  telefono:<br><input type="tel" name="telefono" required ><br>
  	<input type="submit" value="invio" >
  
</form> 




</div>



</body>
</html>