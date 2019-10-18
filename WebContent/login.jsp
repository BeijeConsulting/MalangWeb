<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accedi</title>
</head>
<body>
	<br>
	<hr color = "black">
	<font color = "black">
		<marquee>
				<b>Effettua il login</b>
		</marquee>
	</font>
	
	
	<form action = "auth.jsp" method = "POST">
		 <p align = "center">Username: <input type = "text" name = "username" ></p>
		 <p align = "center">Password: <input type = "password" name = "password"> </p>
		<p align = "center"><input type = "submit" value="Invia"></p>
	</form>
	
	<%
		String errore = request.getParameter("errore");
	if(errore != null){
		if(!(errore.isEmpty())){
			if(errore.equals("manca")){
			%>	
			<p align = "center">
				<font color = "red">
				<i> I campi sono obbligatori </i>
				</font>
			</p>
		<%	
			}
			if(errore.equals("no")){
			%>
			<p align = "center">
				<font color = "red">
				<i> I campi sono sbagliati </i>
				</font>
			</p>
		
		<%
			}
		}
		}
	%>
	
	
	<!-- form action = "servlet" method = "POST">
		<!--  input type="Text" name = "nome" -->
		<!--  button name ="invia">Invia</button-->
	<!--  /form -->
	


</body>
</html>