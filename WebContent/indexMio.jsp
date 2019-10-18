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
<% String filename = request.getParameter("filename");%>
<h1  style="text-align:center;">Hello World</h1>
<p style="font-size:25px;text-align:center;">It's a new day...</p>

<form style="text-align:center;" action="/index.html">
  Step1<br>
  <input type="text" name="step1" value="Don't worry">
  <br>
  Step2<br>
  <input type="text" name="step2" value="Be happy"> 
</form> 


</body>
</html>