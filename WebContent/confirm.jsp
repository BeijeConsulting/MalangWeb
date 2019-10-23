<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Conferma</title>
</head>
<body>

	<jsp:useBean id="userBean" class="it.beije.malang.web.User" scope="session" />
	<p>Name : <jsp:getProperty name="userBean" property="name"/></p>
	<p>Surname : <jsp:getProperty name="userBean" property="surname"/></p>
	<p>Email : <jsp:getProperty name="userBean" property="email"/></p>
	<p>Phone : <jsp:getProperty name="userBean" property="phone"/></p>
	
	<form action="actionServlet" method="POST">
		<input type="submit" name="confirm" value="Conferma">
		<input type="submit" name="modify" value="Modifica">
	</form>
	
</body>
</html>