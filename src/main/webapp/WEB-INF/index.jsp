<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<title>Omikuji</title>
</head>
<body>
	
	<h1 class="text-center"> Send an Omikuji! </h1>
	<div class= "d-flex justify-content-center">
		<form action="/form" method="POST" >
			<div>
				<label>Pick any number from 5 to 25.</label><br />
				<input type="number" name="number" />
			</div>
			<div>
				<label>Enter the name of any city.</label><br />
				<input type="text" name="city" />
			</div>
			<div>
				<label>Enter the name of any real person.</label><br />
				<input type="text" name="name" />
			</div>
			<div>
				<label>Enter professional endeavor or hobby.</label><br />
				<input type="text" name="hobby" />
			</div>
			<div>
				<label>Enter any type of living thing.</label><br />
				<input type="text" name="thing" />
			</div>
			<div>
				<label>Say something nice to someone.</label><br />
				<textarea name="comment" cols="30" rows="10"></textarea>
			</div>
			<p>Send and show a friend</p>
			<button>Send</button>
		</form>
	</div>
	
	
</body>
</html>