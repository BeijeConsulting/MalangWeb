<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AUTH</title>
</head>
<body>

<h1>
<%

final String user = "Joseph";
final String psw = "Frank";

try{
	String username = request.getParameter("username");
	String password = request.getParameter("password");

	if(username.equals(user) && password.equals(psw))
		out.println("Ciao Sacramento");
	else{
		out.println("Chi sei</br>");
		out.println("<a href='login.jsp'>Torna a casa</a>");
	}
}
catch(NullPointerException ex){
	out.println("Chi sei</br>");
	out.println("<a href='login.jsp'>Torna a casa</a>");
}

%>
</h1>

</body>
</html>