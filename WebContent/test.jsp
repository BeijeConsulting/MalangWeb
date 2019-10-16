<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="it.beije.malang.web.FileManager" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TEST</title>
</head>
<body>

	<%  
	try{
		String path = request.getParameter("filepath");
		List<String> rows = FileManager.readFileAsList(path);
		for(String row : rows)
			out.println(row + "</br>\n");
	}
	catch(NullPointerException ex){
		out.println("Il file non esiste");
	}
	%>

</body>
</html>