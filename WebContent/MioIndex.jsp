<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mio JSP</title>
</head>
<body>
<%-- Per commenti JSP --%>
<%-- l'uguale serve per fare  --%>
<% String nome = request.getParameter("nome");%>
<h1  style="text-align:center;">Hello <%= nome  %><br></h1>
<p style="font-size:25px;">It's a new day...</p>

<form action="/index.html">
  Step1:<br>
  <input type="text" name="step1" value="Don't worry">
  <br>
  Step2:<br>
  <input type="text" name="step2" value="Be happy"> 
</form> 


</body>
</html>