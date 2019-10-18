<%@page import="org.apache.catalina.connector.Request"%>
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
String user= request.getParameter("username");
String password = request.getParameter("password");
String result = "ok";
if ((user != null && user.equals("franklin")) && (password != null && password.equals("123456")))  {
	out.print("OK");
	} else {
		out.print("username sbagliato"+ "\n" + "password sbaglliati");
		//request.getSession().setAttribute("error, "CREDENZIALI ERRATE");
%>
<% } %>








</body>
</html>