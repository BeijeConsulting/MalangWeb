<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrazione</title>
</head>
<body>
<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<%
String nome = userBean.getNome();
String cognome = userBean.getCognome();
String email = userBean.getEmail();
String telefono = userBean.getTelefono();
%>
<center>BENVENUTO NEL SITO BEIJE CONSULTING<br><br>
	<b>REGISTRAZIONE CSV: </b><br><br>
	<form action="CsvServlet" method="post">
	NOME : <input type="text" name="param_nome" value="<%= nome %>"><br>
	COGNOME : <input type="text" name="param_cognome" value="<%= cognome %>"><br>
	EMAIL : <input type="text" name="param_email" value="<%= email %>"><br>
	TELEFONO : <input type="text" name="param_telefono" value="<%= telefono %>"><br>
	<input type="submit" value="REGISTRA"><br><br></form>
	
	<b>REGISTRAZIONE XML: </b><br><br>
	<form action="XMLServlet" method="post">
	NOME : <input type="text" name="param_nome" value="<%= nome %>"><br>
	COGNOME : <input type="text" name="param_cognome" value="<%= cognome %>"><br>
	EMAIL : <input type="text" name="param_email" value="<%= email %>"><br>
	TELEFONO : <input type="text" name="param_telefono" value="<%= telefono %>"><br>
	<input type="submit" value="REGISTRA"><br><br>
	</form>
	<b>REGISTRAZIONE DB: </b><br><br>
	<form action="DBServlet_Two" method="post">
	NOME : <input type="text" name="param_nome" value="<%= nome %>"><br>
	COGNOME : <input type="text" name="param_cognome" value="<%= cognome %>"><br>
	EMAIL : <input type="text" name="param_email" value="<%= email %>"><br>
	TELEFONO : <input type="text" name="param_telefono" value="<%= telefono %>"><br>
	<input type="submit" value="REGISTRA"><br><br>
	</form>

</body>
</html>