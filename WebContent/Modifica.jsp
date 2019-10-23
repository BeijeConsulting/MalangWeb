<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modifica</title>
</head>
<style>
#input2{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#submit2{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#submit2:hover{
margin:5px;
border:2px solid black;
padding:5px;
border-radius:8px;
background-color:green;
color:black;
}

#modify2{
margin:5px;
border:1px solid black;
padding:5px;
border-radius:8px;
}

#modify2:hover{
margin:5px;
border:2px solid black;
padding:5px;
border-radius:8px;
background-color:red;
color:black;
}
</style>
<body>
<form action="Registrazione.jsp" method="get">
<input type="text" id="input2" name="nome" value="<%= request.getParameter("nome") %>" placeholder="inserisci nome"><br>
<input type="text" id="input2" name="cognome" value="<%= request.getParameter("cognome") %>" placeholder="inserisci cognome"><br>
<input type="text" id="input2" name="mail" value="<%= request.getParameter("email") %>" placeholder="inserisci e-mail"><br>
<input type="text" id="input2" name="telefono" value="<%= request.getParameter("telefono") %>" placeholder="inserisci telefono"><br>
<input type="submit" id="submit2" value="CONFERMA" name="conferma">
<input type="submit" id="modify2" value="MODIFICA" name="modifica">
</form>
<p><b><i><font color='blue'>Modifica pure i tuoi parametri</font></i></b></p>
</body>
</html>