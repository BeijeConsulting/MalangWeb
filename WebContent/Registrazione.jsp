<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "it.beije.malang.web.ConnectionFactory"
	import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RegistraContatto</title>
</head>
<body>
<%
String nome = request.getParameter("nome");
String cognome = request.getParameter("cognome");
String mail = request.getParameter("mail");
String telefono = request.getParameter("telefono");
String conferma = request.getParameter("conferma");

Connection con = ConnectionFactory.getConnection();
Statement stmt = con.createStatement();

//ho premuto modifica e procedo al codice
//else{ 
	//response.sendRedirect("index.jsp");}
	
	
	
	String query = "SELECT id FROM jsp_utenti WHERE nome = '" + nome + "'"; 
	
	
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
		if(conferma != "" && conferma != null){
	
				if(request.getParameter("nome")!="" && request.getParameter("cognome")!="" && request.getParameter("email")!="" && request.getParameter("telefono")!= ""){
				query="INSERT INTO jsp_utenti (nome,cognome,email,telefono) VALUE ('" + nome + "','"+ cognome +"','" + mail + "','"+ telefono +"')";
				stmt.execute(query);
			
				response.sendRedirect("index.jsp?status=inserito");
			}else{
			//out.print("mi dispiace riprova...");
				response.sendRedirect("index.jsp?status=vuoto");
			}
		}else{
			if(request.getParameter("nome")!="" && request.getParameter("cognome")!="" && request.getParameter("email")!="" && request.getParameter("telefono")!= ""){
			response.sendRedirect("Modifica.jsp?nome="+request.getParameter("nome")+"&cognome="+request.getParameter("cognome")+"&email="+request.getParameter("email")+"&telefono="+request.getParameter("telefono"));
			}else{
				response.sendRedirect("index.jsp?status=vuoto");
			}
		}
	}
	
	con.close();
	stmt.close();
%>
</body>
</html>