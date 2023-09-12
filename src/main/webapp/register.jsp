<!DOCTYPE html>
<html>
<head>
<title>User Registration</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">

</head>
<style>
<style>
  body {
    background-color: green; 
  }

  h1 {
    text-align: center;
    color: #4CAF50; 
  }

  form {
    max-width: 400px;
    margin: 0 auto;
    background-color: #fff; 
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  input[type="email"],
  input[type="text"],
  input[type="password"],
  input[type="tel"],
  select {
    width: 100%;
    padding: 8px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
  }

  .alert-danger {
    background-color: #f44336; 
    color: white;
    padding: 10px;
    border-radius: 4px;
    text-align: center;
  }
</style>
</style>

<body>
	<%
	String Error = request.getParameter("error");
	%>
	<h1 style="text-align: center;">Registration</h1>
	<%
	if (Error != null) {
	%>
	<div class="alert alert-danger" role="alert"><%= Error%></div>
	<%
	}
	%>
	<form action="RegisterServlet" method="post"
		style="max-width: 400px; margin: 0 auto ; margin-top:100px;">
		<label for="email" style="display: block; margin-bottom: 8px;">Email:</label>
		<input type="email" id="email" name="email" required
			style="width: 100%; padding: 8px; margin-bottom: 16px; border: 1px solid #ccc; border-radius: 4px;"><br>

		<label for="name" style="display: block; margin-bottom: 8px;">Username:</label>
		<input type="text" id="name" name="name" required
			style="width: 100%; padding: 8px; margin-bottom: 16px; border: 1px solid #ccc; border-radius: 4px;"><br>

		<label for="password" style="display: block; margin-bottom: 8px;" >Password:</label>
		<input type="password" id="password" name="password" required value="Ishu@145"
			style="width: 100%; padding: 8px; margin-bottom: 16px; border: 1px solid #ccc; border-radius: 4px;"><br>

		<label for="phone_number" style="display: block; margin-bottom: 8px;">Phone
			Number:</label> <input type="tel" id="phone_number" name="phone_number"
			required
			style="width: 100%; padding: 8px; margin-bottom: 16px; border: 1px solid #ccc; border-radius: 4px;"><br>

		<label for="type" style="display: block; margin-bottom: 8px;">User
			Type:</label> <select id="type" name="type"
			style="width: 100%; padding: 8px; margin-bottom: 16px; border: 1px solid #ccc; border-radius: 4px;">
			<option value="seller">Seller</option>
			<option value="doctor">Doctor</option>
			<option value="patient">Patient</option>
		</select><br> <input type="submit" value="Register"
			style="background-color: #61bf85; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; float: right;">
	</form>
</body>
</html>
