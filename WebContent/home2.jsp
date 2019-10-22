<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="it.beije.malang.web.Utente"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>

<jsp:useBean id="user" class="it.beije.malang.web.Utente" scope="session" />
Ciao <jsp:getProperty name="user" property="nome"/> <jsp:getProperty name="user" property="cognome"/>

</body>
</html>