<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>

div {
    background-color:  #8000ff;
    color: white;
    padding: 30px;
    text-align: center;
    font-size:30px
}
div:hover {
    background-color:   #408080;
}
#rcorners2 {
    border-radius: 25px;
    border: 2px solid #8000ff;
    padding: 20px;
    width: auto;
    height: auto;
    align:middle;
    
}
#p{ background-color=" #8000ff"}
</style>

</head>

<body >
<div class="mouseover">LOGIN</div>

<form action="submit">
<p id="rcorners2">
 USERNAME:
  <input type="text" id="uname" name="fname" required ><br><br>
 PASSWORD:
  <input type="password" id="pwd" name="lname" ><br><br>
  <input type="submit" value="SUBMIT" >
  
</p>
</form>

</body>
</html>