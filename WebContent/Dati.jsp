<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>


<jsp:useBean id="nome" class="it.beije.malang.web.Utente" scope="session" />
 	OK <jsp:getProperty name="user" property="nome"/> <jsp:getProperty name="user" property="cognome"/>
<jsp:getProperty name="user" property="e-mail"/> <jsp:getProperty name="user" property="telefono"/>
</body>
</html>