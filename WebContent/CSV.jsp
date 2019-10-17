<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
    <%@ page import="java.util.StringTokenizer" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Servlet</title>
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
      <li><a href="index.jsp">Home</a></li>
      <li class="active"><a href="CSV.jsp">CSV</a></li>
      <li><a href="XML.jsp">XML</a></li>
      <li><a href="DB.jsp">DATABASE</a></li>
    </ul>
  </div>
</nav>


<%File f = new File ("C:\\temp\\testo.txt");
FileReader fr = new FileReader(f);
BufferedReader br = new BufferedReader(fr);
StringTokenizer tokenizer = null;
StringBuilder sb = new StringBuilder();%>
<%while (br.ready())
{
	%><center><%
	out.print(br.readLine());%><br><%
	%></center><%
 } %>
 <%br.close(); %>


</body>
</html>
