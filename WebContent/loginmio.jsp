<%@page import="java.sql.SQLException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />

<jsp:setProperty name="userBean" property="username" param="USER"/>
<jsp:setProperty name="userBean" property="email" param="EMAIL"/>
<jsp:setProperty name="userBean" property="password" param="PSSW"/>

<%
try{
	importfile.toDB(userBean.getUsername(), userBean.getEmail(), userBean.getPassword());
	response.sendRedirect("index.jsp");
}catch(ClassNotFoundException clnt){
	clnt.printStackTrace();
}catch(SQLException sql){
	response.sendRedirect("registration.jsp");
}

%>

<form action="loginmio.jsp" method="get"<%//per inviare/prendere i dati alla pagina login in modo tale che se mi registro, dopo sono già loggato %>>
  username:<br><input type="text" name="USER" required ><br>
  password:<br><input type="password" name="PSSW" required ><br>
  	<input type="submit" value="accedi" >
</form> 

</div>



</body>
</html>