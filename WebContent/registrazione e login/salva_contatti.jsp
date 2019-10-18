<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.*" %>
<%@ page import="it.beije.malang.database.entities.Contatto" %>
<%@ page import="it.beije.malang.FromDbToCsv" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String name = "Phrenqlyn";  
String pwd = "Joseph.123";
try{
	 String n = request.getParameter("name"); 
	 String c = request.getParameter("surname");
	 String e = request.getParameter("email"); 
	 String t = request.getParameter("telefono");
	 
	 List<Contatto> contatti = new ArrayList<>();
	 Contatto contatto = new Contatto();
	 contatto.setNome(n);
	 contatto.setCognome(c);
	 contatto.setEmail(e);
	 contatto.setTelefono(t);
	 contatti.add(contatto);
	 
	 
	 FromDbToCsv.writeCsv(contatti);
	 
	 out.println("<a href = 'login.jsp'>Vai a login</a>");
} catch(NullPointerException e){
	out.println("mancano dei dati");
}


%> 


</body>
</html>