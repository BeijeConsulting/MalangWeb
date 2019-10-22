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

<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<jsp:setProperty name="userBean" property="nome" param="param_nome"/>
<jsp:setProperty name="userBean" property="cognome" param="param_cognome"/>
<jsp:setProperty name="userBean" property="email" param="param_email"/>
<jsp:setProperty name="userBean" property="telefono" param="param_telefono"/>


NOME: <jsp:getProperty name="userBean" property="nome"/><br>
COGNOME: <jsp:getProperty name="userBean" property="cognome"/><br>
EMAIL: <jsp:getProperty name="userBean" property="email"/><br>
TELEFONO: <jsp:getProperty name="userBean" property="telefono"/><br>
<br><br>
<a href="login2.jsp">MODIFICA</a>
<a href="registrazione.jsp">REGISTRATI</a>

</body>
</html>