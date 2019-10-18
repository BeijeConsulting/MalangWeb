<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import= "java.io.File"%>
    <%@ page import= "java.io.IOException"%>
    <%@ page import= "java.io.FileReader"%>
    <%@ page import= "java.io.BufferedReader"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>File XML</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">BeijeConsulting</a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="home2.jsp">Home</a></li>
      <li><a href="CSV.jsp">CSV</a></li>
      <li class="active"><a href="XML.jsp">XML</a></li>
      <li><a href="DB.jsp">DATABASE</a></li>
      <li><a href="index.jsp">LOG OUT</a></li>
    </ul>
  </div>
</nav>
<center><a href="home2.jsp"><input type="button" value="HOME" ></a></center>
<% try {
				File f = new File("C:\\temp\\File2.xml");
				FileReader fr = new FileReader (f);
				BufferedReader br = new BufferedReader (fr);
				out.println(br.readLine());
				while(br.ready())
				{
					%><center><%
					out.print(br.readLine());%><br><%
					%></center><%
				}
				
				br.close();
		
				} catch (Exception e) {
				e.printStackTrace();
			    }
		 
%>
</body>
</html>