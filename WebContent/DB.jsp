<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="it.beije.malang.web.ConnectionFactory" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rubrica</title>
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
      <li><a href="XML.jsp">XML</a></li>
      <li class="active"><a href="DB.jsp">DATABASE</a></li>
      <li><a href="index.jsp">LOG OUT</a></li>
    </ul>
  </div>
</nav>
<center><a href="home2.jsp"><input type="button" value="HOME" ></a></center><br><br>
<center>
<% Connection conn = null;
		try {
			conn = ConnectionFactory.getConnection();
			Statement stmt = conn.createStatement();
			String query="SELECT * FROM rubrica";
			ResultSet rs = stmt.executeQuery(query);
			System.out.println("connection ? " + !conn.isClosed());
			
			while (rs.next()) {
				
				out.print(rs.getInt("id"));%><br><%
				out.print(rs.getString("cognome"));%><br><%
				out.print(rs.getString("nome"));%><br><%
				out.print(rs.getString("email"));%><br><%
				out.print(rs.getString("telefono"));%><br><br><%


			}
			
			rs.close();
			
		} catch (ClassNotFoundException cnfEx) {
			cnfEx.printStackTrace();
		} catch (SQLException sqlEx) {
			sqlEx.printStackTrace();
		} finally {
			try {
				if (conn != null) conn.close();
			} catch (SQLException ce) {
				ce.printStackTrace();
			}
		}
%>
<br><br><a href="CSV.jsp"><input type="button" value="HOME" ></a>
</center>
</body>
</html>
