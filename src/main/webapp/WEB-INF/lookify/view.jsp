<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>View Song Info</title>
	</head>
	<body>
	
		<a href="/dashboard">Dashboard</a>
		
		<p>Name: <c:out value="${lookify.name}"/> </p>
		
		<p>Artist: <c:out value="${lookify.artist}"/> </p>
		
		<p>Rating: <c:out value="${lookify.rating}"/> </p>
		
		<form action="/delete/${lookify.id}" method="post">
			<input type="hidden" name="_method" value="delete">
			<input type="submit" value="Delete">
		</form>
		
	</body>
</html>