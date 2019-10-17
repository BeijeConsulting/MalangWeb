<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page 
    	import="java.sql.Connection" 
    	import="java.sql.DriverManager"
    	import="java.sql.Statement"
    %>
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%= "Parametro Email Ricevuto : " + request.getParameter("email") %><br>
<%= "Parametro Password Ricevuto : " + request.getParameter("password") %><br>

<%

if((request.getParameter("email").isEmpty() || request.getParameter("password").isEmpty())){
	response.sendRedirect("index.jsp?errore=campi_vuoti");
}




try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection connessione = DriverManager.getConnection("jdbc:mysql://localhost:3306/malang?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","beije12");
	Statement stmt = connessione.createStatement();
	
	String email = request.getParameter("email");
	String password = request.getParameter("password");
	String query = ("INSERT INTO jsp_utenti (email,password) VALUES ('"+email+"','"+password+"')");

	int esito = stmt.executeUpdate(query);


	if(esito == 1) {
		out.print("Contatto Inserito!");
	}
	
}catch(Exception e){
	
}


%>
</body>
</html>