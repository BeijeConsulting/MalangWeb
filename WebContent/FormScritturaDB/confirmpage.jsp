<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="it.beije.malang.web.Utente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<jsp:useBean id="userBean" class="it.beije.malang.web.Utente"
		scope="session" />
	<jsp:setProperty name="userBean" property="nome" param="nome" />
	<jsp:setProperty name="userBean" property="cognome"
		param="cognome" />
	<jsp:setProperty name="userBean" property="email" param="email" />
	<jsp:setProperty name="userBean" property="telefono" param="telefono" />
	<%
		//TRADUZIONE IN JAVA :
		Utente user = (Utente) request.getSession().getAttribute("userBean");
		if (user == null) {
			user = new Utente();
			request.getSession().setAttribute("user", user);
		}

		user.setNome(request.getParameter("nome"));
		user.setCognome(request.getParameter("cognome"));
		user.setEmail(request.getParameter("email"));
		user.setTelefono(request.getParameter("numero"));
	%>

	<%=user.getNome()%>
	<%=user.getCognome()%><br>
	<%=user.getEmail()%><br>
	<%=user.getTelefono()%><br>
	<jsp:getProperty name="userBean" property="nome" />-
	<jsp:getProperty name="userBean" property="cognome" />-
	<jsp:getProperty name="userBean" property="email" />-
	<jsp:getProperty name="userBean" property="telefono" />

	<br>
	<br>
	<a href="servlet">MODIFICA</a>


</body>
</html>