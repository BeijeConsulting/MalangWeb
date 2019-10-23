<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="it.beije.malang.web.Utente"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
</head>
<body>

	<%
		String error = (String) request.getAttribute("error");
		if (error != null) {
			out.print("Compila tutti i campi" + "<br><br>");
			request.removeAttribute("error");
		}
		
		String result = (String)request.getAttribute("result");
		if(result != null){
			out.println("Il bean è stato scritto");
			request.removeAttribute("result");
		}
	%>

	<jsp:useBean id="userBean" class="it.beije.malang.web.User" scope="session" />

	<form action="servlet" method="POST">
	NOME : <input type="text" name="name" value="<jsp:getProperty name="userBean" property="name"/>"><br>
	COGNOME : <input type="text" name="surname" value="<jsp:getProperty name="userBean" property="surname"/>"><br>
	EMAIL : <input type="text" name="email" value="<jsp:getProperty name="userBean" property="email"/>"><br>
	TELEFONO : <input type="text" name="phone" value="<jsp:getProperty name="userBean" property="phone"/>"><br>
	<input type="submit" value="ACCEDI">
	</form>

</body>
</html>