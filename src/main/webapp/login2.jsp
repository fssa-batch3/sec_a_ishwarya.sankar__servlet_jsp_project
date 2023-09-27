<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
 
 
 @import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:wght@500&display=swap');

 body{
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
	font-family: 'Jost', sans-serif;
	background:white;
	/* margin-left: 690px; */
 }
.main{
	display: block;
	width: 60px;
	height: 600px;
	background: rgb(163, 212, 203);
	overflow: hidden;
	border-radius: 10px;
	box-shadow: 5px 20px 50px #000;
}
 #chk{
	display: none;
	
}
.signup{
	position: relative;
	width:100%;
	height: 100%;
}
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
	width:60%;
	height: 20px;
	background: #e0dede;
	justify-content: center;
	display: flex;
	margin: 20px auto;
	padding: 10px;
	border: none;
	outline: none;
	border-radius: 5px;
}
button{
	width: 60%;
	height: 40px;
	margin: 10px auto;
	justify-content: center;
	display: block;
	color: #151616;
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
	height: 500px;
	width:450px;
	background: rgb(163, 212, 203);
	border-radius:10px;
	transform: translateY(-180px); 
	 transition: .8s ease-in-out; 
	 margin-top:290px;
 }
.login label{
	color: #181818;
}

small{
	padding-top:0em ;
	position:absolute;
	bottom: 10px;
	left: 200px;

}
</style>
<body>

<%
	String Error = request.getParameter("errorMessage");
	%>
<div class="login">
        <form  action = "login" method="post" id="log" >
        <% if (Error != null) { %>	
		
		<div class="alert alert-danger" role="alert"><%=Error%></div>
		<%
        	}
		%>
            <label for="mail" aria-hidden="true"  >Login</label>
            <input type="email" name="email"
			placeholder="Enter email">
         
           <input type="password" name="password" placeholder="Enter password">
            <a href=></a>
            <button type="submit" id="login" >Login</button>
            <small>Don't have an Account <a href="./register2.jsp">Signup Now</a>
            </small>
        </form>
    </div>
    <script>
   
</script>
</body>
</html>