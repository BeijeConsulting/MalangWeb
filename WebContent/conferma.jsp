<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="it.beije.malang.web.Utente"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BEAN</title>
</head>
<body>

	<jsp:useBean id="userBean" class="it.beije.malang.web.Utente"
		scope="session" />
	<jsp:setProperty name="userBean" property="nome" param="nome" />
	<jsp:setProperty name="userBean" property="cognome" param="cognome" />
	<jsp:setProperty name="userBean" property="telefono" param="telefono" />
	<jsp:setProperty name="userBean" property="email" param="email" />

	<jsp:getProperty name="userBean" property="nome" /><br>
	<jsp:getProperty name="userBean" property="cognome" /><br>
	<jsp:getProperty name="userBean" property="telefono" /><br>
	<jsp:getProperty name="userBean" property="email" />
	<br>
	<br>

	<form action="SaveData" method="post">
		<a href="login2.jsp">MODIFICA</a> <input type="submit" value="ACCEDI">
	</form>

</body>
</html>