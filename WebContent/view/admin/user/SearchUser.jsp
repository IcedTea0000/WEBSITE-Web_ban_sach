<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search User</title>
</head>
<body>
	<div>
	<c:import url="../Menu.jsp"></c:import>	
		<div>
			<h1>Search User</h1>
		</div>
		<form method="post" action="search">
			<div>
				Search by <br /> name <input type="radio" name="search-type"
					value="by-name" />
					 username <input
					type="radio" name="search-type" value="by-username" checked="checked" />
			</div>
			<div>
				<input type="text" name="keyword"
					placeholder="what's on your mind...">
			</div>
			<br />
			<div>
				<button type="sumbit">Search</button>
			</div>
		</form>
	</div>
</body>
</html>