<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div>
  		<a href="/dashboard">Dashboard</a>
  		
  		<p>Title: <i><c:out value="${search.title}"/></i></p>
  		
  		<p>Artist: <i><c:out value="${search.artist}"/></i></p>
  		
  		<p>Rating: <i><c:out value="${search.rating}"/></i></p>
  		
  		<a href="/delete/${search.id}">Delete</a>
  	</div>
	</body>
</html>