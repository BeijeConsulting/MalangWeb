<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="it.beije.malang.database.entities.Contatto" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="userBean" class="it.beije.malang.database.entities.Contatto" scope="session" />

<jsp:setProperty name="userBean" property="nome" param="name"/>
<jsp:setProperty name="userBean" property="cognome" param="surname"/>
<jsp:setProperty name="userBean" property="email" param="email"/>
<jsp:setProperty name="userBean" property="telefono" param="phone"/>

 <%= "name =" + userBean.getNome() + "\n" %> 
 <%= "surname=" + userBean.getCognome() + "\n" %>
 <%= "email =" + userBean.getEmail() + "\n" %> 
 <%= "phone=" + userBean.getTelefono() + "\n" %>
 
 <a href="Inserisci dati_bean.jsp">MODIFICA</a>
 <a href="salva_contatti_bean.jsp">CONFERMA</a>
 
 
</body>
</html>