<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mio JSP</title>
</head>
<body>
<%-- Per commenti JSP --%>
<%-- l'uguale serve per fare  --%>
<% String nome = request.getParameter("nome");%>
<%= "CIAO" + nome  %><br>
</body>
</html>