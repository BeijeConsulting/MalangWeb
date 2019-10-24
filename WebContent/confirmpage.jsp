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
	<jsp:setProperty name="userBean" property="nome" param="param_nome" />
	<jsp:setProperty name="userBean" property="cognome" param="param_cognome" />
	<jsp:setProperty name="userBean" property="email" param="param_email" />
	<jsp:setProperty name="userBean" property="telefono" param="param_telefono" />
	<%
		//TRADUZIONE IN JAVA :
		/* Utente user = (Utente) request.getSession().getAttribute("userBean");
		if (user == null) {
			user = new Utente();
			request.getSession().setAttribute("userBean", user);
		} 

		user.setNome(request.getParameter("param_nome"));
		user.setCognome(request.getParameter("param_cognome"));
		user.setEmail(request.getParameter("param_email"));
		user.setTelefono(request.getParameter("param_numero"));*/
	%>

<%-- 	<%=user.getNome()%><br>
	<%=user.getCognome()%><br>
	<%=user.getEmail()%><br>
	<%=user.getTelefono()%><br> --%>
	<jsp:getProperty name="userBean" property="nome" /><br>
	<jsp:getProperty name="userBean" property="cognome" /><br>
	<jsp:getProperty name="userBean" property="email" /><br>
	<jsp:getProperty name="userBean" property="telefono" />

	<br>
	<br>
	<a href="servlet">MODIFICA</a>


</body>
</html>