<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Auth</title>
</head>
<body>

<% 

String username =request.getParameter("username");
String password=request.getParameter("password");
if((username.equals("pippo") && password.equals("ciao"))) { 
	session.setAttribute("username",username);	
	out.print("Ciao " + username);
	
	} else {
		response.sendRedirect("login.jsp?ko=true");//posso ragionare su un'altra variabile in questo caso KO per sapere quando c'è un'errore
		 
		
		
	    out.println("Autenticazione fallita...");
		
		
	}
         
	

%>


</body>
</html>