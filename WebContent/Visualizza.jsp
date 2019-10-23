<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="it.beije.malang.web.Utente"%>
<%@page import="it.beije.malang.web.loadUtente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conferma dati</title>
</head>
<body>
<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<jsp:setProperty name="userBean" property="nome" param="par_nome"/>
<jsp:setProperty name="userBean" property="cognome" param="par_cognome"/>
<jsp:setProperty name="userBean" property="email" param="par_email"/>
<jsp:setProperty name="userBean" property="telefono" param="par_tel"/>
<p align = "center">
<jsp:getProperty name="userBean" property="nome"/>
<br>
<jsp:getProperty name="userBean" property="cognome"/>
<br>
<jsp:getProperty name="userBean" property="email"/>
<br>
<jsp:getProperty name="userBean" property="telefono"/>


<form action = "FormAutenticazione.jsp" method = "GET">
	<p align = "center"> <input type = "submit" value = "Modifica" name = "Modifica"></p>
</form>
<form action ="loadUtente" method = "GET">
	<p align = "center"> <input type ="submit" value = "Registrati" name = "Registrati"></p>
	<input type="hidden" name="nome" value=" <jsp:getProperty name="userBean" property="nome"/>">
</form>

</body>
</html>