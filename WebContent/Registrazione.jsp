<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "it.beije.malang.web.ConnectionFactory"
	import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOG-IN</title>
</head>
<body>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");


//else{ 
	//response.sendRedirect("index.jsp");}
	
	Connection con = ConnectionFactory.getConnection();
	Statement stmt = con.createStatement();
	
	String query = "SELECT id FROM jsp_utenti WHERE username = '" + username + "'"; 
	
	
	ResultSet set = stmt.executeQuery(query);

	if(set.first()){
		response.sendRedirect("index.jsp?status=duplicato");
		
		

	}
	else
	{
		//out.print("impossibile inserire parametri!");
		/*if(username.equals("MARCO") && password.equals("Beije")){
			out.println("il tuo username e': " + request.getParameter("username"));
			out.print("la tua password e': " + request.getParameter("password"));
		}*/
		if(request.getParameter("username")!="" && request.getParameter("password")!= ""){
			query="INSERT INTO jsp_utenti (username,password) VALUE ('" + username + "','"+ password +"')";
			stmt.execute(query);
			
			response.sendRedirect("index.jsp?status=inserito");
		}else{
			//out.print("mi dispiace riprova...");
			response.sendRedirect("index.jsp?status=vuoto");
		}
	}
	
	con.close();
	stmt.close();
%>
</body>
</html>