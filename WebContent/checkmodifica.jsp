<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="it.beije.malang.web.ModificaUser"%>
<%@page import="it.beije.malang.web.importfile"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>

</head>
<body>
<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>
<div align ="center"> 

<jsp:useBean id="userBean" class="it.beije.malang.web.ModificaUser" scope="session" />

<jsp:setProperty name="userBean" property="nome" param="nome"/>
<jsp:setProperty name="userBean" property="email" param="email"/>
<jsp:setProperty name="userBean" property="cognome" param="cognome"/>
<jsp:setProperty name="userBean" property="telefono" param="telefono"/>

<form action="" method="get">

nome: <jsp:getProperty name="userBean" property="nome"/> <br>
cognome: <jsp:getProperty name="userBean" property="cognome"/> <br>
email: <jsp:getProperty name="userBean" property="email"/> <br>
telefono: <jsp:getProperty name="userBean" property="telefono"/> <br>
<input type="button" value="conferma" > <br>

</form> 


	<form action="modifica.jsp" method="get">
  	<input type="submit" value="modifica" >
  	</form> 



</div>



</body>
</html>