<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Input Data</title>
</head>
<body>

<%
	String nome,cognome,telefono,email;
	
	nome=request.getParameter("nome")!=null?request.getParameter("nome"):"";
	cognome=request.getParameter("cognome")!=null?request.getParameter("cognome"):"";
	email=request.getParameter("email")!=null?request.getParameter("email"):"";
	telefono=request.getParameter("telefono")!=null?request.getParameter("telefono"):"";
%>

<p>
<form method="get" action="datacheck">
Nome:<br>
<input type="text" name="nome" value="<%=nome%>">
<br>
Cognome:<br>
<input type="text" name="cognome" value="<%=cognome%>">
<br>
Telefono:<br>
<input type="text" name="telefono" value="<%=telefono%>">
<br>
Email:<br>
<input type="text" name="email" value="<%=email%>">
<br>
<input type="submit" value="Registra!">
</form>

<% 
	String result;
	if ((result=request.getParameter("result"))!=null)
	{
		out.print("<br>"+result);
	}
%>

</body>
</html>