<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
 <%@page import="java.util.List"

    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>First JSP</title>
</head>
<body>




<% for(char c='a';c<='z';c++){ %>
<%out.print(c);
} %>

<% 
String prova= new String();
prova="provastringa";
ArrayList<String> arr = new ArrayList<String>(); 
arr.add(prova);
out.print(prova);
%>




</body>
</html>