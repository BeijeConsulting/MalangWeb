<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
#input{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:5px;
}
#container{
border:1px solid black;
border-radius:5px;
padding:10px;
width:60%;
}
</style>
<center>
<div id="container">
<% 
if(request.getParameter("status") != null){
if(request.getParameter("status").equals("modifica")){
out.print("<font color='green'><b>Modifica i Tuoi Dati : </b></font><br>");
}}
%>
<form action="ControllerDati" method="get">
Nome  <input type="text" id="input" value="<%= request.getParameter("nome") != null ? request.getParameter("nome") : "" %>" placeholder="Nome" name="nome"><br>
Cognome  <input type="text" id="input" value="<%= request.getParameter("cognome") != null ? request.getParameter("cognome") : "" %>" placeholder="Cognome" name="cognome"><br>
Email <input type="text" id="input" placeholder="Email" value="<%= request.getParameter("email") != null ? request.getParameter("email") : "" %>"name="email"><br>
Password  <input type="text" id="input" placeholder="Password" value="<%= request.getParameter("password") != null ? request.getParameter("password") : "" %>" name="password"><br>
Cellulare  <input type="text" id="input" placeholder="Cellulare" name="cellulare" value="<%= request.getParameter("cellulare") != null ? java.net.URLEncoder.encode(request.getParameter("cellulare")) : "" %>"><br>

<button type="submit" class="btn btn-primary" name="continua"><%= request.getParameter("status") != null ? request.getParameter("status").equals("modifica") ? "Modifica" : "Continua" : "Continua" %></button>
</form>
</div>
</center>

<%
if(request.getParameter("status") != null){
if(request.getParameter("status").equals("campi_vuoti")){
	out.print("Compila tutti i campi!");
	
	}else if(request.getParameter("status").equals("email")){
		out.print("Email non valida");
		}else if(request.getParameter("status").equals("cellulare")){
			out.print("Cellulare non valido. Inseriscilo come +39xxxyyyxxxx");
			}
}
	%>
</body>
</html>