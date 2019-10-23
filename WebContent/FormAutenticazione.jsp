<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrati</title>
</head>
<body>
<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<%
	String nome = userBean.getNome() != null ? userBean.getNome() : "";
	String cognome = userBean.getCognome() != null ? userBean.getCognome() : "";
	String email = userBean.getEmail() != null ? userBean.getEmail() : "";
	String telefono = userBean.getTelefono() != null ? userBean.getTelefono() : "";
%>
	<hr color = "black">
	<form action ="Visualizza.jsp" method = "POST">
	<p align = "center"> NOME: <br><input type ="text" name = "par_nome" value = "<%= nome %>"> </p>
	<p align = "center"> COGNOME: <br><input type = "text" name = "par_cognome" value = "<%= cognome %>"></p>
	<p align = "center"> EMAIL: <br><input type = "text" name = "par_email" value = "<%= email %>"> </p>
	<p align = "center"> TELEFONO: <br> <input type = "text" name ="par_tel" value = "<%= telefono %>"> </p>
	<p align = "center"> <input type = "submit" value = "Invia" name = "Invia"> </p>
	</form> 
	<hr color = "black">
	
	</body>
</html>