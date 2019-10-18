<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
<p>
<form method="get" action="authentication.jsp">
Username:<br>
<input type="text" name="username" placeholder="Username"><br>
Password:<br>
<input type="password" name="password" placeholder="Password"><br>
<input type="submit">
</form>

<% if (request.getParameter("return")!=null)
	out.print("Username e/o password errati!");
%>
<!--  
<title>login</title>
</head>
<body>

<%
String error = (String) request.getSession().getAttribute("error");
if (error != null) {
	out.print(error + "<br><br>");
	request.getSession().removeAttribute("error");
}
%>

<form action="servlet" method="post">
	USERNAME : <input type="text" name="username"><br>
	PASSWORD : <input type="password" name="password"><br>
	<input type="submit" value="ACCEDI">
</form>

-->
</body>
</html>