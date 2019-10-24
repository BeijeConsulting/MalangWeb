<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<style>
body {background-color: white;}
</style>
<h1  style="text-align:center;">Login</h1>
<p style="font-size:25px;">Chi sei?</p>
<%
//stampa solo una volta un messaggio di errore , altrimenti mi riindirizza sulla pagina home2.jsp
String error = (String) request.getSession().getAttribute("error");
if (error != null) {
	out.print(error + "<br><br>");
	request.getSession().removeAttribute("error"); // rimuove il messaggio di erro al refresh di pagina
}
%>
<form action="insertServlet"  method="post">
  Nome:<br>
  <input type="text" name="nome" >
  <br>
  Cognome:<br>
  <input type="text" name="cognome"> 
  <br>
   Email:<br>
  <input type="text" name="email"> 
   
  <br><br>
   <input type="submit" value="Invio">
 
</form> 
 <% 
  /*  String a = (String)request.getSession().getAttribute("true");
	
	if (a.equals("true")){
	
    out.println("Autenticazione fallita...");
    
	}request.getSession().removeAttribute("true");  */
%>
</body>
</html>