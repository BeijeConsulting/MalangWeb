<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Marco</title>
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
</style>
<form action="Registrazione.jsp" method="get">
<input type="text" id="input" name="username" placeholder="inserisci user"><br>
<input type="password" id="input" name="password" placeholder="inserisci pass"><br>
<input type="submit" id="submit" value="REGISTRATI" name="x">
</form>
<br>
<%
if(request.getParameter("status")!=null){
	if(request.getParameter("status").equals("duplicato")){
		out.print("<font style='color:red'>Contatto gia esistente</font>");
	}else if(request.getParameter("status").equals("inserito")){
		out.print("<font style='color:green'>Contatto Inserito</font>");
	}else if(request.getParameter("status").equals("vuoto")){
		out.print("<font style='color:blue'>Devi compilare tutti i campi</font>");
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