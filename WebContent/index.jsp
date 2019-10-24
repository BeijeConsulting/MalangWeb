<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="it.beije.malang.web.User"%>
<%@page import="it.beije.malang.web.Error"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form</title>
</head>
<body>

	<%
		Error error = (Error) request.getSession().getAttribute("error");
		if (error != null) {
			out.print(error.getError() + "<br><br>");
			request.getSession().removeAttribute("error");
		}
	
		String result = (String)request.getSession().getAttribute("ok");
		if(result != null){
			out.println("Il bean è stato scritto <br><br>");
			request.getSession().removeAttribute("ok");
		}
		
	%>

	<jsp:useBean id="userBean" class="it.beije.malang.web.User" scope="session" />

	<form action="servlet" method="POST">
	NOME : <input type="text" name="name" placeholder="Nome..." value="<jsp:getProperty name="userBean" property="name"/>"><br>
	COGNOME : <input type="text" name="surname" placeholder="Cognome..." value="<jsp:getProperty name="userBean" property="surname"/>"><br>
	EMAIL : <input type="text" name="email" placeholder="Email..." value="<jsp:getProperty name="userBean" property="email"/>"><br>
	TELEFONO : <input type="text" name="phone" placeholder="Telefono..." value="<jsp:getProperty name="userBean" property="phone"/>"><br>
	<input type="submit" value="ACCEDI">
	</form>

</body>
</html>