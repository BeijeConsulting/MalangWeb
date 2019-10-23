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
	String Nome = request.getParameter("nome") != null ? request.getParameter("nome") : "";
	String Cognome = request.getParameter("cognome") != null ? request.getParameter("cognome") : "";
	String Email = request.getParameter("email") != null ? request.getParameter("email") : "";
	String Password = request.getParameter("password") != null ? request.getParameter("password") : "";
	String Cellulare = request.getParameter("cellulare") != null ? request.getParameter("cellulare") : "";
	
	out.print("Nome : "+Nome+"<br>");
	out.print("Cognome : "+Cognome+"<br>");
	out.print("Email : "+Email+"<br>");
	out.print("Password : "+Password+"<br>");
	out.print("Cellulare : "+java.net.URLEncoder.encode(Cellulare)+"<br>");
	%>
	
	<form action="Controller">
	<input type="submit" name="modifica" value="Modifica">
		<input type="hidden" value="<%= Nome %>" name="nome">
		<input type="hidden" value="<%= Cognome %>" name="cognome">
		<input type="hidden" value="<%= Email %>" name="email">
		<input type="hidden" value="<%= Password %>" name="password">
		<input type="hidden" value="<%= Cellulare %>" name="cellulare">
	
	</form>
	<br>
	<form action="SalvaDati">
	<input type="submit" name="salva" value="Salva">
	</form>
	
	<%
	/*
		if(request.getParameter("modifica") != null){
			//significa che ha premuto su modifica!
			
			response.sendRedirect("form.jsp?nome="
					+Nome+
					"&cognome="+
					Cognome+"&email="+
					Email+"&password="+
					Password+"&cellulare="+Cellulare+
					"&status=modifica");
			
		}else if(request.getParameter("invia") != null){
			//significa che ha premuto su invia!
			out.print("Invia!");
		}
	*/
	
	%>


</body>
</html>