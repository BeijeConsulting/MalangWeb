<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<center>
<%String error = (String) request.getSession().getAttribute("error");
if (error != null) out.print (error + "<br><br>");%>
<form method="POST" action="Autenticazione">
<p>Username: <input type="text" placeholder="Username" name="user"/></p>
<p>Password: <input type="password" placeholder="Password" name="passw"/></p>
<p><input type="submit" value="Login"></p>

</form>
</center>

</body>
</html>