<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="it.beije.malang.web.Utente"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bean</title>
</head>
<body>
<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<jsp:setProperty name="userBean" property="nome" param="param_nome"/>
<jsp:setProperty name="userBean" property="cognome" param="param_cognome"/>
<jsp:setProperty name="userBean" property="email" param="param_email"/>
<jsp:setProperty name="userBean" property="telefono" param="param_telefono"/>
<%
//TRADUZIONE IN JAVA :
Utente user = (Utente) request.getSession().getAttribute("userBean");
if (user == null) {
	user = new Utente();
	request.getSession().setAttribute("user", user);			
}

user.setNome(request.getParameter("param_nome"));
user.setCognome(request.getParameter("param_cognome"));
user.setEmail(request.getParameter("param_email"));
user.setTelefono(request.getParameter("param_telefono"));



user.setNome(request.getParameter("param_nome"));
user.setCognome(request.getParameter("param_cognome"));
user.setEmail(request.getParameter("param_email"));
user.setTelefono(request.getParameter("param_telefono"));
%>

<jsp:getProperty name="userBean" property="nome"/>-<jsp:getProperty name="userBean" property="cognome"/>
<br><br>

<jsp:getProperty name="userBean" property="email"/>-<jsp:getProperty name="userBean" property="telefono"/>
<br><br>

<a href="Access2.jsp">MODIFICA</a>

</body>
</html>