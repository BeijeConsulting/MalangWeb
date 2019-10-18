<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="it.beije.malang.database.entities.Contatto" %>
<%@ page import="it.beije.malang.FromCsvToDb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%
FromCsvToDb esporta = new FromCsvToDb();
List<Contatto> contact = new ArrayList<>();
contact = esporta.ReadCsv();
List<String> names =new ArrayList<String>();
List<String> surnames =new ArrayList<String>();


try{
	 String n = request.getParameter("username"); 
	 String p = request.getParameter("password");
	 
	 String name = "frenk";
	 String password = "frenk";
	 
	 if (name.equals(n) & password.equals(p)){out.println("sei dentro bomber");}
	 else if(name.equals(n) & !password.equals(p)){out.println("password errata");}
	 else if(!name.equals(n) & password.equals(p)){out.println("username errata");}
	 else{out.println("Sei sicuro di essere te?");}
	 
	 out.println("<a href = 'login.jsp'>Torna a login</a>");
} catch(NullPointerException e){
	out.println("mancano o username o password");
}


%> 


</body>
</html>