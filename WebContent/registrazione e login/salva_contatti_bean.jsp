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
<% List<Contatto> contatti = new ArrayList<>();
	Contatto contatto = new Contatto();
	contatto.setNome(userBean.getNome());
	contatto.setCognome(userBean.getCognome());
	contatto.setEmail(userBean.getEmail());
	contatto.setTelefono(userBean.getTelefono());

	contatti.add(contatto);
	FromDbToCsv.writeCsv(contatti); %>

</body>
</html>