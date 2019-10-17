<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%= "Benvenuto " + request.getParameter("nome") %></title>
</head>
<body>
<style>

#input{
margin:5px;
padding:10px;
border:2px solid black;
border-radius:10px;
color:black;
}

#input_submit{
margin:5px;
padding:10px;
border:2px solid yellow;
border-radius:10px;
color:black;
background-color:
}

#form{
border:1px solid black;
border-radius:10px;
}

#txt{
font-size:25px;
color:yellow;
font-weight:bold;
}
</style>
<center>
<form action="Registrazione.jsp" method="GET" id="form">
<input id="input" placeholder="Email..." type="text" name="email"><br>
<input id="input" placeholder="Password" type="password" name="password"><br>
<input id="input_submit" type="submit" value="Conferma" name="send"><br>
</form></center>
<center>
<%
try{
if(request.getParameter("errore").equals("campi_vuoti")){
	out.print("<hr><b style='color:red'>Ooops...I campi non possono essere vuoti.</b>");
	return;
}
}catch(Exception e){
	
}
%>
</center>
</body>
</html>
