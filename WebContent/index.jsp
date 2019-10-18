<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>"JSP_guida HTML" </title>

</head>
<body>
<!-- COMMENTO HTML -->
<%-- COMMENTO JSP --%>
<h1>INTRO</h1>
	<img src="Immagine.png" alt="html" width="500" height="333">
<p> INDENTAZIONE </p>

<form action="/action_page.php">
  ID:<br>
  <input type="text" value="">
  <br>
  password:<br>
  <input type="text" value="">
  <br><br>
  <input type="submit" value="Invio">
</form> 

Con &lt;br&gt;vado a capo.
<br>Con &lt;h1&gt; &lt;h1&gt; metto il titolo, ha livello di importanza da h1 ad h6.
<br>Con &lt;p&gt; &lt;p&gt; metto un paragrafo.
<br><a href="https://www.w3schools.com">This is a link</a> il link lo scrivo in questo modo: &lt;a href="https://www.w3schools.com">This is a link&lt;/a&gt;
<br><img src="trentino.jpg" alt="MANCA FOTO" width="100" height="100" > per inserire l'immagine uso : &lt; img src="trentino.jpg" width="100" height="100"&gt;
<br> width e height sono per le dimensioni. In IMG metto anche &lt;alt="Girl with a jacket"&gt; che serve nel caso in cui l'immagine non dovesse venire caricata e quindi 
allora mette il messaggio nell'ALT che dovrebbe descrivere la foto.
<br> <p style="color:red">
 Posso scrivere le cose colorate con :&lt;style="color:red"&gt; </p>
 
</body>
</html>