<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
</head>
<body>

<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<%
String nome = userBean.getNome() != null ? userBean.getNome() : "";
String cognome = userBean.getCognome() != null ? userBean.getCognome() : "";
String email = userBean.getEmail() != null ? userBean.getEmail() : "";
String telefono = userBean.getTelefono() != null ? userBean.getTelefono() : "";
%>

<%

String error = (String) request.getSession().getAttribute("error");
if (error != null) {
	out.print(error + "<br><br>");
	request.getSession().removeAttribute("error");
}
%>

<form action="confirmpage.jsp" method="get">
	Nome : <input type="text" name="<%= nome %>"><br>
	Cognome : <input type="text" name="<%= cognome %>"><br>
	Email : <input type="text" name="<%= email %>"><br>
	Telefono : <input type="text" name="<%= telefono %>"><br>
	<input type="submit" value="Invia">
</form>
</body>
</html>