<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserimento dati</title>
</head>
<body>
<jsp:useBean id="userBean" class="it.beije.malang.web.Utente1" scope="session" />
<%
String nome = userBean.getNome() != null ? userBean.getNome() : "";
String cognome = userBean.getCognome() != null ? userBean.getCognome() : "";
String email = userBean.getEmail() != null ? userBean.getEmail() : "";
String telefono = userBean.getTelefono() != null ? userBean.getTelefono() : "";


%>

<form action="Controllo" method="post">
	NOME : <input type="text" name="nome" value="<%=nome %>"><br>
	COGNOME : <input type="text" name="cognome" value="<%=cognome %>"><br>
	EMAIL : <input type="text" name="email" value="<%=email %>"><br>
	TELEFONO: <input type="text" name="telefono" value="<%=telefono %>"><br>
	<input type="submit" value="ACCEDI">0
	<a href="Principale.jsp">MODIFICA</a>
</form>
  

</body>
</html>