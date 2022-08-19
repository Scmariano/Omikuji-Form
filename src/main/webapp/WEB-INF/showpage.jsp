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
	<h1 class="text-center">Here's Your Omikuji!</h1>
	<div class= "d-flex justify-content-center">
		<h3>In <c:out value="${number} " />years, you will live in
			<c:out value="${city} " /> with <c:out value="${name} " />
			as your room mate, <c:out value="${hobby} " /> for a living.
			The next time you see a <c:out value="${thing} " />,
			you will have good luck. Also, <c:out value="${comment} " />
		</h3>
	</div>
	<a href="/omikuji">Go Back</a>
</body>
</html>