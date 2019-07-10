<%@ page isErrorPage="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Add New Song</title>
	</head>
	<body>
		<a href="/dashboard">dashboard</a>
		<h1>New Song</h1>
		<form:form action="/add_music" method="post" modelAttribute="music">
		    <p>
		        <form:label path="name">Name</form:label>
		        <form:errors path="name"/>
		        <form:input path="name"/>
		    </p>
		    <p>
		        <form:label path="artist">Artist</form:label>
		        <form:errors path="artist"/>
		        <form:textarea path="artist"/>
		    </p>
		    <p>
		        <form:label path="rating">Rating</form:label>
		        <form:errors path="rating"/>
		        <form:input path="rating"/>
		    </p>
   
		    <input type="submit" value="Add New Song"/>
		</form:form>  
	</body>
</html>