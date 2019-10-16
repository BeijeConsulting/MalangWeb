<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>file</title>
</head>
<body>
<% String nome = request.getParameter("nome"); %>

<%= "CIAO"+ nome%>
<%="\n"+ "oggi è mercoledì"%>


</body>
</html>