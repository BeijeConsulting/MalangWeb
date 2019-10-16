<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page 
	import="it.beije.malang.ContattoMalang"
	import="it.beije.malang.xml.ParserContatto"
	import="java.util.List"
	import="java.util.ArrayList"
	import="java.util.Arrays"
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% String filename=request.getParameter("filename"); %>

<p>Seleziona i contatti provenienti da <% out.print(filename); %></p>

<%
	List<ContattoMalang> contatti=new ArrayList<>();
	try{
		if (filename!=null)
			contatti=ParserContatto.readFile("C:\\prova\\"+filename); 
	}catch (Exception e){
		e.printStackTrace();
		out.print("File non trovato!");
	}
%>
<br>
<form method="get" action="SelectContact.jsp">
<select name="contatto">
<%
	for (ContattoMalang contatto:contatti){
		%>
		<option value="<%out.print(contatto.toString()); %>"><%out.print(contatto.toString());  %></option>
		<%
	}
%>
</select>
<input type="hidden" name="filename" value="<%out.print(filename); %>">
<input type="submit" name="OK">
</form>

<br>

<%
	String contatto;
	if ((contatto=request.getParameter("contatto"))!=null)
	{
		for (String str:contatto.split(":")){
			out.print(str+"<br>");
		}
			
	}
		
%>
</body>
</html>