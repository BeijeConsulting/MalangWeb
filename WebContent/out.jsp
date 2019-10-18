<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>"JSP_guida HTML" </title>

</head>
<body>

<% 




	
   String id = request.getParameter("USER") ;
   String password = request.getParameter("PSSW");
	// cambia l'ordine, prima i null poi equals
	if (((id.equalsIgnoreCase("gabriele") && id !=null) && (password.equals("ferulli") && password != null))){
		response.sendRedirect("index.jsp");
		}else{

		response.sendRedirect("loginmio.jsp");
		}
	
%>

</body>
</html>