<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Result</title>
</head>
<body>
	<div>
		<table >
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Address</th>
				<th>Username</th>
				<th>Password</th>
				<th>Role</th>
				<th>Info</th>
				<th>Action</th>
			</tr>
			<c:forEach var="user" items="${userList}">
				<tr>
					<td>${user.id}</td>
					<td>${user.name}</td>
					<td>${user.address}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>
					<td>${user.role}</td>
					<td>${user.info}</td>
					<td><a href="update-user?userId=${user.id}">Edit</a>
						<a href="delete-user?deleteId=${user.id}">Delete</a>					
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>