<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="it.beije.malang.web.Authenticator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Auth</title>
</head>
<body>

<%
	if (Authenticator.isValid(request.getParameter("username"), request.getParameter("password")))
		out.print("OK!");
	else
		response.sendRedirect("login.jsp?return=failed");
%>

</body>
</html>