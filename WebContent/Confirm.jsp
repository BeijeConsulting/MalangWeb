<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import = "it.beije.malang.web.ConnectionFactory" %>
    <%@ page import = "java.sql.*" %>
    <%@ page import = "it.beije.malang.web.Utente" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WriteInDB</title>
</head>
<body>
<style>
#ok{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#ok:hover{
margin:5px;
border:2px solid black;
padding:5px;
border-radius:8px;
background-color:green;
color:black;
}
#mod{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#mod:hover{
margin:5px;
border:2px solid black;
padding:5px;
border-radius:8px;
background-color:green;
color:black;
}
</style>
<%
Utente utente = (Utente) request.getSession().getAttribute("userBean");

out.print("Nome : " + utente.getNome() + "<br>");
out.print("Cognome : " + utente.getCognome() + "<br>");
out.print("Email : " + utente.getEmail() + "<br>");
out.print("telefono :" + utente.getTelefono() + "<br>");
out.println("vuoi confermare l'iserimento o modificarlo?" + "<br>");

%>


<form action="InsertToDB" method="GET">
<button type="submit" id="ok" value="CONFERMA" name="conferma">Conferma</button><br>
<button type="submit" id="mod" formaction="Start"  value="MODIFICA" name="modifica">Modifica</button>
</form>

</body>
</html>