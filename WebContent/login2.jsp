<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login bean</title>
</head>
<body>

<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<%
String nome = userBean.getNome() != null ? userBean.getNome() : "";
String email = userBean.getEmail() != null ? userBean.getEmail() : "";
String telefono = userBean.getTelefono() != null ? userBean.getTelefono() : "";
String cognome = userBean.getCognome();
if (cognome == null) {
	cognome = "";
}
%>

<form action="auth.jsp" method="get">


	NOME : <input type="text" name="param_nome" value="<%= nome %>"><br>
	
	
	COGNOME : <input type="text" name="param_cognome" value="<%= cognome %>"><br>

	
	EMAIL : <input type="text" name="param_email" value="<%= email %>"><br>
	
	
	TELEFONO : <input type="text" name="param_telefono" value="<%= telefono %>"><br>
	
	
	
	<input type="submit" value="ACCEDI">
	


	
	
</form>
<form action="Controller.java" method="get">
	<input type="button" name="esci" value="ESCI">
</form>
</body>
</html>