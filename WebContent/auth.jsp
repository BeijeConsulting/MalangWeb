<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%
String user=request.getParameter("username");
String pass=request.getParameter("password");
if(user.equals("simox")){
	out.print("Benvenuto	"+user);
	out.print("  hai utilizzato il metodo "+request.getMethod()+" per inviare username e password");


}else{
	out.print("username e password errata verrai reindirizzato per reinserirle");
	Thread.sleep(2000);
	
	
response.sendRedirect("Login.jsp");	
}
%>

<form method="get" action="Login.jsp" >
  
  <input type="submit" value="Logout">
</form>


<%@page import="it.beije.malang.web.Utente"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BEAN</title>
</head>
<body>

<jsp:useBean id="userBean" class="it.beije.malang.web.Utente" scope="session" />

<jsp:setProperty name="userBean" property="nome" param="param_nome"/>
<jsp:setProperty name="userBean" property="cognome" param="param_cognome"/>
<%
//TRADUZIONE IN JAVA :
/* Utente user = (Utente) request.getSession().getAttribute("userBean");
if (user == null) {
	user = new Utente();
	request.getSession().setAttribute("user", user);			
}

user.setNome(request.getParameter("param_nome"));
user.setCognome(request.getParameter("param_cognome")); */
%>

<% //user.getNome() %> <% // user.getCognome() %><br>




<jsp:getProperty name="userBean" property="nome"/>-<jsp:getProperty name="userBean" property="cognome"/>


</body>
</html>