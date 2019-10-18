<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List" %>
<%@ page import="it.beije.malang.database.entities.Contatto" %>
<%@ page import="it.beije.malang.FromCsvToDb" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title><%= "Prima JSP modificata da vitto" %></title>
</head>
<body>
<style>
input, select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<div>
  <form action="auth.jsp">
    <label for="fname">Username</label>
    <input type="text"  name="name" placeholder="Your name..">

    <label for="lname">Surname</label>
    <input type="text" name="surname" placeholder="Your surname..">

    <input type="submit" value="Submit">
  </form>
</div>

<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>

</body>
</html>