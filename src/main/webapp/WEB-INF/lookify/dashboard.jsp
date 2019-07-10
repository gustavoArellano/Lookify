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
		<a href="/new">Add New</a> <a href="/topTen">Top Songs</a> <form action="/search" method="post"><input type="text" name="search" value=""><button>Search</button></form>
		
		
		
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Rating</th>
					<th>Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lookify}" var="music">
				<tr>
					<td><a href="/view/${music.id}"><c:out value="${music.name}"/></a></td>
					<td><c:out value="${music.rating}"/></td>
					<td>
						<form action="/delete/${music.id}" method="post">
							<input type="hidden" name="_method" value="delete">
							<input type="submit" value="Delete">
						</form>
					</td> 					
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>