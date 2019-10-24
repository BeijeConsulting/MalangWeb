<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="out.jsp" method="post">


  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" name="uname" required placeholder="Enter Username" >

    <label for="psw"><b>Password</b></label>
    <input type="password" name="psw" required placeholder="Enter Password" >

    <button type="submit">Login</button>
    <label>
      <input type="checkbox" checked="checked" name="remember"> Remember me
    </label>
  </div>

  <div class="container" style="background-color:#f1f1f1">
    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form> 

<title>login</title>
</head>
<body>

<%
String error = (String) request.getSession().getAttribute("error");
if (error != null) {
	out.print(error + "<br><br>");
	request.getSession().removeAttribute("error");
}
%>

</body>
</html>