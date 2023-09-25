<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<style>
/* Reset some default styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Basic styling for the body */
body {
	background-color: #f0f0f0;
	font-family: 'Jost', sans-serif;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

form {
	max-width: 600px;
	margin: 0 auto;
	background-color: #fff; /* Set the form background color to white */
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

/* Style for the login container */
.container {
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
	padding: 20px;
	width: 300px;
}

/* Style for the form header */
h1 {
	margin-bottom: 20px;
	text-align: center;
	position: absolute;
	margin-top: -290px;
}

/* Style for form labels */
label {
	display: block;
	margin-bottom: 5px;
}

/* Style for form input fields */
input[type="email"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

/* Style for the submit button */
button[type="submit"] {
	background-color: #007bff;
	color: #fff;
	border: none;
	padding: 10px 20px;
	border-radius: 3px;
	cursor: pointer;
	width: 100%;
}

/* Hover effect for the submit button */
button[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
<body>

	<%
	String Error = request.getParameter("errorMessage");
	%>
	<h1 style="text-align: center;">Login</h1>

	<form action="login" method="post">
		<%
		if (Error != null) {
		%>
		<div class="alert alert-danger" role="alert"><%=Error%></div>
		<%
		}
		%>
		<label>Email: </label> <input type="email" name="email"
			placeholder="Enter email"> <br /> <label>Password: </label>

		<input type="password" name="password" placeholder="Enter password">
		<br />
		<button type="submit">Submit</button>
	</form>
</body>
</html>
</script>
</body>
</html>