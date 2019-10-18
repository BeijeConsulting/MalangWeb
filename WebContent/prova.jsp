<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Prova JSP</title>
  </head>
  <body>
  <br>
  <hr color = "black">
  <p align = "center">
  <%String nome = request.getParameter("nome"); 
  	if(nome.isEmpty()){
  %>
  	Nome inserito non valido.
  <%} else{ 
  	out.println("Ciao " + nome);
  %>
  <br>
  <br>
  <% 
  	try{
  		int base = Integer.parseInt(request.getParameter("valore"));
  		int potenza = Integer.parseInt(request.getParameter("potenza"));
  		int result = 1;
  		for(int i = 0; i < potenza; i++){
  			result *=  base;
  		}
  		out.println("La potenza del numero inserito è uguale a " + result);
  	}catch(IllegalArgumentException e){
  		out.println("Il numero da te inserito non è corretto.\nCi dispiace " + nome);
  	}
  	
  } %>
  </p>
  
  
  </body>
</html>