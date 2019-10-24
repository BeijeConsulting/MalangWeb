<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "it.beije.malang.web.ConnectionFactory"
	import="java.sql.*"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>InsertData</title>
</head>
<style>
#input{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#submit{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#submit:hover{
margin:5px;
border:2px solid black;
padding:5px;
border-radius:8px;
background-color:green;
color:black;
}

#modify{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#modify:hover{
margin:5px;
border:2px solid black;
padding:5px;
border-radius:8px;
background-color:red;
color:black;
}
</style>

<!-- Trova il modo di precompilare i campi con il bean(oggetto Utente) in sessione -->

<body>
<form action="Control" method="post">
<input type="text" id="input" name="nome" placeholder="inserisci nome"><br>
<input type="text" id="input" name="cognome" placeholder="inserisci cognome"><br>
<input type="text" id="input" name="email" placeholder="inserisci e-mail"><br>
<input type="text" id="input" name="telefono" placeholder="inserisci telefono"><br>
<input type="submit" id="submit" value="CONFERMA" name="conferma">
</form>
<br>
</body>
</html>