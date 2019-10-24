<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />

<form action="out.jsp" method="post">

<a href="login2.jsp">MODIFICA</a>

<input type="submit" value="ACCEDI"> 
</body>
</html>