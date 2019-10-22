<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.StringTokenizer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Form Registrazione</title>
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
      <li class="active"><a href="formregistrazione.jsp">FORM</a></li>
    </ul>
  </div>
</nav>
<center>BENVENUTO NEL SITO BEIJE CONSULTING<br><br>
	<b>REGISTRAZIONE CSV: </b><br><br>
	<form action="CsvServlet" method="post">
	NOME : <input type="text" name="param_nome"><br>
	COGNOME : <input type="text" name="param_cognome"><br>
	EMAIL : <input type="text" name="param_email"><br>
	TELEFONO : <input type="text" name="param_telefono"><br><br>
	<input type="submit" value="REGISTRA"><br><br></form>
	
	<b>REGISTRAZIONE XML: </b><br><br>
	<form action="XMLServlet" method="post">
	NOME : <input type="text" name="param_nome"><br>
	COGNOME : <input type="text" name="param_cognome"><br>
	EMAIL : <input type="text" name="param_email"><br>
	TELEFONO : <input type="text" name="param_telefono"><br><br>
	<input type="submit" value="REGISTRA"><br><br>
	</form>
	<b>REGISTRAZIONE DB: </b><br><br>
	<form action="DBServlet_Two" method="post">
	NOME : <input type="text" name="param_nome"><br>
	COGNOME : <input type="text" name="param_cognome"><br>
	EMAIL : <input type="text" name="param_email"><br>
	TELEFONO : <input type="text" name="param_telefono"><br><br>
	<input type="submit" value="REGISTRA"><br><br>
	</form>

</body>
</html>