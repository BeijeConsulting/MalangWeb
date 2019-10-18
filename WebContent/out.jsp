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
final String user = "giacomo";
final String psw = "miao";

try{
	String username = request.getParameter("uname");
	String password = request.getParameter("psw");
	
	if(username.equals(user) && password.equals(psw))
		out.println("credenziali esatte");
	else{
		out.println("credenziali errate");
		out.println("<a href = 'login.jsp'>ritenta</a>");
	}
}

catch(NullPointerException ex){
	out.println("credenziali errate");
	out.println("<a href = 'login.jsp'> ritenta</a>");
}

%>
</body>
</html>