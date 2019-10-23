<%@ page language="java"import = "it.beije.malang.web.Autenticazione" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Benvenuto <%  out.print(request.getParameter("username")); %></title>
</head>
<body>
<br>
	<hr color = "black">
	<% 
		
		String nome = request.getParameter("username");
		String password = request.getParameter("password");
		if(nome.isEmpty() || password.isEmpty()){
			response.sendRedirect("login.jsp?errore=manca");
		}else{
		
		if(Autenticazione.valoriUguali(nome, password)){ %>
		<p align = "center"> Benvenuto!! </p>
		<% 
			}else{
				response.sendRedirect("login.jsp?errore=no");
			}
		
		}
			
	%>
	</body>
	</html>
	