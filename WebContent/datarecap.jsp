<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Data Recap</title>
</head>
<body>

Nome:<%=request.getParameter("nome") %><br>
Cognome:<%=request.getParameter("cognome") %><br>
Telefono:<%=request.getParameter("telefono") %><br>
Email:<%=request.getParameter("email") %><br>

<form method="get" action="savedata">
<input type="hidden" name="nome" value="<%=request.getParameter("cognome") %>">
<input type="hidden" name="cognome" value="<%=request.getParameter("nome") %>">
<input type="hidden" name="telefono" value="<%=request.getParameter("telefono") %>">
<input type="hidden" name="email" value="<%=request.getParameter("email") %>">
<input type="submit" value="Modifica" formaction="start">
<input type="submit" value="Ok">
</form>

</body>
</html>