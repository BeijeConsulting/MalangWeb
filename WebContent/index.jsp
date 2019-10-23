<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>InsParContatto</title>
</head>
<body>
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
<form action="Registrazione.jsp" method="get">
<input type="text" id="input" name="nome" placeholder="inserisci nome"><br>
<input type="text" id="input" name="cognome" placeholder="inserisci cognome"><br>
<input type="text" id="input" name="email" placeholder="inserisci e-mail"><br>
<input type="text" id="input" name="telefono" placeholder="inserisci telefono"><br>
<input type="submit" id="submit" value="CONFERMA" name="conferma">
<input type="submit" id="modify" value="MODIFICA" name="modifica">
</form>
<br>
<%
if(request.getParameter("status")!=null){
	if(request.getParameter("status").equals("duplicato")){
		out.print("<font style='color:red'><b><i>Contatto gia esistente</b></i></font>");
	}else if(request.getParameter("status").equals("inserito")){
		out.print("<font style='color:green'>Contatto Inserito</font>");
	}else if(request.getParameter("status").equals("vuoto")){
		out.print("<font style='color:red'><b><i>Devi prima compilare tutti i campi!</b></i></font>");
	}
}

	//if(request.getParameter("risultato")==null){
	//	out.print("Impossibile registrarsi, riprova più tardi ;)");
	//}
	//if(String errore = request.getParameter("errore")!=null){
	//   out.print("impossibile inserire i dati!")
	//}
%>
</body>
</html>