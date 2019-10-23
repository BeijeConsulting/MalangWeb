<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<body>

<%
//stampa solo una volta un messaggio di errore , altrimenti mi riindirizza sulla pagina home2.jsp
String error = (String) request.getSession().getAttribute("error");
if (error != null) {
	out.print(error + "<br><br>");
	request.getSession().removeAttribute("error"); // rimuove il messaggio di erro al refresh di pagina
}
%>
<!-- form per inserire i dati e da inviare al servlet TestServlet.java -->
<form action="servlet" method="post">
	USERNAME : <input type="text" name="username"><br>
	PASSWORD : <input type="password" name="password"><br>
	<input type="submit" value="ACCEDI">
</form>

</body>
</html>