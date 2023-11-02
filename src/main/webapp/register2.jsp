<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous">
</head>
<style>
<style>
 body{
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	font-family: 'Jost', sans-serif;
	background: linear-gradient(to bottom, #ecebf2, #79d1d0, #858588);
	/* margin-left: 690px; */
}
.main{
	width: 480px;
	height: 650px;
	background: rgb(163, 212, 203);
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
	margin-left:500px;
	margin-top:90px;
}
 #chk{
	display: none;
	
}
.signup{
	position: relative;
	
}
/* #signup{
	display: flex;
	flex-direction: column;

} */
label{
	color: rgb(14, 201, 54);
	font-size: 2.3em;
	justify-content: center;
	display: flex;
	margin: 60px;
	font-weight: bold;
	cursor: pointer;
	transition: .5s ease-in-out;
}
input{
	width: 60%;
	height: 36px;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 10px auto;
	padding: 20px;
	border: none;
	outline: none;
	border-radius: 5px;
}
.Proffession{
	width: 63%;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	background-color: palegreen;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}
button{
	width: 60%;
	height: 40px;
	margin: -18px auto;
	justify-content: center;
	display: block;
	color: #fff;
	background: #37f03d;
	font-size: 1em;
	font-weight: bold;
	margin-top: 40px;
	outline: none;
	border: none;
	border-radius: 5px;
	transition: .2s ease-in;
	cursor: pointer;
	
}
button:hover{
	background: #46e7e7;
}
.login{
	height: 860px;
	background: #bcc8c2;
	border-radius: 60% / 10%;
	transform: translateY(-180px);
	/* transition: .8s ease-in-out; */
}
.login label{
	color: #181818;
	transform: scale(.10);
}

#chk:checked ~ .login{
	transform: translateY(-600px);
}
.login label{
	transform: scale(1);	
}
.signup label{
	transform: scale(.6);
}



small{
	padding-top:0em ;
	position:absolute;
	bottom: -40px;
	left: 200px;

}
</style>
<body>
	<%
	String Error = request.getParameter("error");
	%>
	<%
	if (Error != null) {
	%>
	<div class="alert alert-danger" role="alert"><%= Error%></div>
	<%
	}
	%>
<form action="RegisterServlet" method="post">
 <div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">
			<div class="signup">
				<form name="app" id="signup">
				
					<label for="chk">Sign Up</label>
					<input type="text"  name="reqname"id="name" placeholder="User name" required>
					<input type="email" name="reqemail" id="email" placeholder="Email"  required>
					<input type="number" name="reqphone" id="phone_number" placeholder="phone number"  required>
					<input type="password" name="reqpass" id="password" placeholder="password"    required> 
					
						<select name="type" class="Proffession" id="txt2">
						  <option value="Doctor" id="doc">Doctor</option>
						  <option value="Patient" id="patient">Patient</option>
						  						  <option value="Admin" id="admin">Admin</option>
						  
						</select>
						</form>
					<button type="submit"  id="signin">Sign up</button>
					<small>Already I have an Account <a href="./login2.html">Login Now</a>
					</small>
				</form>
			</div>
</body>
</html>