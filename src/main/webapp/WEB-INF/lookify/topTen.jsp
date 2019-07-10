<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Top Ten</title>
		<style>
		
		</style>
	</head>
	<body>
	
		<a href="/dashboard">Dashboard</a>
		
		<p> Top Ten Songs </p>
		
		<div>
			<c:forEach items="${music}" var="music">
				<p> <c:out value="${music.rating}"/> - <c:out value="${music.name}"/> - <c:out value="${music.artist}"/>
			</c:forEach>
		</div>

	</body>
</html>