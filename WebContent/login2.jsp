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
/* se i parametri sono nulli, gli sostiruiaco gli apici */
String nome = userBean.getNome() != null ? userBean.getNome() : "";

String cognome = userBean.getCognome();
if (cognome == null) {
	cognome = "";
}

String telefono = userBean.getTelefono();
if (telefono == null) {
	telefono = "";
}

String email = userBean.getEmail();
if (email == null) {
	email = "";
}
%>

<!-- <form action="auth.jsp" method="get">
 -->

<!-- invio questo form al file Login2 -->
<form action="Login2" method="post">
				
 	NOME : <input type="text" name="nome" value="<%= nome %>"><br>
	COGNOME : <input type="text" name="cognome" value="<%= cognome %>"><br>
	TELEFONO : <input type="text" name="telefono" value="<%= telefono %>"><br>
	EMAIL : <input type="text" name="email" value="<%= email %>"><br>
	
	
	<%
	String error = (String) request.getSession().getAttribute("error");
	if (error != null) {
		out.print(error + "<br><br>");
		request.getSession().removeAttribute("error");
	}
	%>
	
	<input type="submit" value="ACCEDI"> 
</form>

</body>

</html>



