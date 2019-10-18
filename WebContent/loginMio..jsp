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

<form action="auth.jsp"  method="get">
  Username:<br>
  <input type="text" name="username" >
  <br>
  Password:<br>
  <input type="password" name="password"> 
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