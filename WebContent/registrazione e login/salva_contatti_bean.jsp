<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*" %>
<%@ page import="it.beije.malang.database.entities.Contatto" %>
<%@ page import="it.beije.malang.FromDbToCsv" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="userBean" class="it.beije.malang.database.entities.Contatto" scope="session" />

<jsp:setProperty name="userBean" property="nome" param="name"/>
<jsp:setProperty name="userBean" property="cognome" param="surname"/>
<jsp:setProperty name="userBean" property="email" param="email"/>
<jsp:setProperty name="userBean" property="telefono" param="telefono"/>

ciao <%= userBean.getNome() %> <%= userBean.getCognome() %>

la tua mail e numero di telefono sono:

<%= userBean.getEmail() %> <%= userBean.getTelefono() %>
</body>
</html>