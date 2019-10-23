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
String cognome = userBean.getCognome();
if (cognome == null) {
	cognome = "";
}
%>

<form action="auth.jsp" method="get">
<<<<<<< HEAD

	NOME : <input type="text" name="param_nome" value="inserisci nome"><br>
	
	COGNOME : <input type="text" name="param_cognome" value="inserisci cognome"><br>
	
	EMAIL : <input type="text" name="param_email" value="inserisci email"><br>
	
	TELEFONO : <input type="text" name="param_telefono" value="inserisci telefono"><br>
	
=======
	NOME : <input type="text" name="param_nome" value="<%= nome %>"><br>
	COGNOME : <input type="text" name="param_cognome" value="<%= cognome %>"><br>
>>>>>>> refs/remotes/origin/master
	<input type="submit" value="ACCEDI">
	<input type="button" value="MODIFICA">
	<input type="radio" value="MODIFICA">
	
</form>

</body>
</html>