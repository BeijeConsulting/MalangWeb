<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="it.beije.malang.web.Utente"%>

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
      <li class="active"><a href="home2.jsp">Home</a></li>
      <li><a href="CSV.jsp">CSV</a></li>
      <li><a href="XML.jsp">XML</a></li>
      <li><a href="DB.jsp">DATABASE</a></li>
      <li><a href="index.jsp">LOG OUT</a></li>
    </ul>
  </div>
</nav>

<jsp:useBean id="user" class="it.beije.malang.web.Utente" scope="session" />
<h3><center>BENVENUTO NEL SITO BEIJE CONSULTING<br> <jsp:getProperty name="user" property="nome"/> <jsp:getProperty name="user" property="cognome"/></center></h3>

</body>
</html>