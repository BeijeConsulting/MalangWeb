<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Beije Consulting</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BeijeConsulting</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="registrato.jsp">Home</a></li>
    </ul>
  </div>
</nav>
<center>
<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />
<jsp:setProperty name="userBean" property="cognome" param="param_cognome"/>
<jsp:setProperty name="userBean" property="nome" param="param_nome"/>
<jsp:setProperty name="userBean" property="email" param="param_email"/>
<jsp:setProperty name="userBean" property="telefono" param="param_telefono"/>
Sei stato registrato con le seguenti credenziali: <br><br>
COGNOME: <jsp:getProperty name="userBean" property="cognome"/><br>
NOME: <jsp:getProperty name="userBean" property="nome"/><br>
EMAIL: <jsp:getProperty name="userBean" property="email"/><br>
TELEFONO: <jsp:getProperty name="userBean" property="telefono"/><br>

<form action="Start" method="get">
<%request.getSession().removeAttribute("userBean"); %>
<input type="submit" value="home">
</form>
</center>
</body>
</html>