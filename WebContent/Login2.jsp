<%@ page language="java" import="it.beije.malang.web.Dati" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<center>

<form method="GET">
<p>Username: <input type="text" placeholder="Username" name="user"/></p>
<p>Password: <input type="password" placeholder="Password" name="passw"/></p>
<p><input type="submit" value="Login"></p>
</form>
<% 
String user = request.getParameter("user");%>
<% String passw = request.getParameter("passw");%>
<% if (user==null||passw==null){
	out.print("Benvenuto");
	}
    else if ((Dati.getUser().equals(user))&&(Dati.getPassw().equals(passw)))
   {%>
		<%response.sendRedirect("autenticato.jsp");%>
	<%
	}
	else
	{%>
		<%out.print("Hai sbagliato"); %>
	<%}%>
</center>
</body>
</html>