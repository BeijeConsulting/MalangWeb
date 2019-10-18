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
String user=request.getParameter("username");
String pass=request.getParameter("password");
if(user.equals("simox")){
	out.print("Benvenuto	"+user);
	out.print("  hai utilizzato il metodo "+request.getMethod()+" per inviare username e password");


}else{
	out.print("username e password errata verrai reindirizzato per reinserirle");
	Thread.sleep(2000);
	
response.sendRedirect("Login.jsp");	
}
%>

<form method="get" action="Login.jsp" >
  
  <input type="submit" value="Logout">
</form>

</body>
</html>