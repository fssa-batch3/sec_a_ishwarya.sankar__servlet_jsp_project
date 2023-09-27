<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.fssa.medlife.model.User"%>
<%@ page import="com.fssa.medlife.dao.UserDAO"%>
<!DOCTYPE html>
<html>
<style>
/* Import Font Dancing Script */
@import url(https://fonts.googleapis.com/css?family=Dancing+Script);

* {
	margin: 0;
}

body {
	background-color: #b4e7b6;
	font-family: Arial;
}

/* NavbarTop */
.navbar-top {
	background-color: #fff;
	color: #333;
	box-shadow: 0px 4px 8px 0px grey;
	height: 70px;
}

.title {
	font-family: 'Dancing Script', cursive;
	padding-top: 15px;
	position: absolute;
	left: 45%;
}

.navbar-top ul {
	float: right;
	list-style-type: none;
	margin: 0;
	overflow: hidden;
	padding: 18px 50px 0 40px;
}

.navbar-top ul li {
	float: left;
}

.navbar-top ul li a {
	color: #333;
	padding: 14px 16px;
	text-align: center;
	text-decoration: none;
}

.icon-count {
	background-color: #ff0000;
	color: #fff;
	float: right;
	font-size: 11px;
	left: -25px;
	padding: 2px;
	position: relative;
}

/* End */

/* Sidenav */
.sidenav {
	background-color: #fff;
	color: #333;
	border-bottom-right-radius: 25px;
	height: 86%;
	left: 0;
	overflow-x: hidden;
	padding-top: 20px;
	position: absolute;
	top: 70px;
	width: 250px;
}

.profile {
	margin-bottom: 20px;
	margin-top: -12px;
	text-align: center;
}

.profile img {
	border-radius: 50%;
	box-shadow: 0px 0px 5px 1px grey;
}

.name {
	font-size: 20px;
	font-weight: bold;
	padding-top: 20px;
}

.job {
	font-size: 16px;
	font-weight: bold;
	padding-top: 10px;
}

.url, hr {
	text-align: center;
}

.url hr {
	margin-left: 20%;
	width: 60%;
}

.url a {
	color: #818181;
	display: block;
	font-size: 20px;
	margin: 10px 0;
	padding: 6px 8px;
	text-decoration: none;
}

.url a:hover, .url .active {
	background-color: #e8f5ff;
	border-radius: 28px;
	color: #000;
	margin-left: 14%;
	width: 65%;
}

/* End */

/* Main */
.main {
	margin-top: 2%;
	margin-left: 29%;
	font-size: 28px;
	padding: 0 10px;
	width: 58%;
}

.main h2 {
	color: #333;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	font-size: 24px;
	margin-bottom: 10px;
}

.main .card {
	background-color: #fff;
	border-radius: 18px;
	box-shadow: 1px 1px 8px 0 grey;
	height: auto;
	margin-bottom: 20px;
	padding: 20px 0 20px 50px;
}

.main .card table {
	border: none;
	font-size: 16px;
	height: 270px;
	width: 80%;
}

.edit {
	position: absolute;
	color: #e7e7e8;
	right: 14%;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	background-color: #007bff; /* Button background color */
	color: #fff; /* Button text color */
	text-decoration: none; /* Remove underline from the link */
	border: none; /* Remove button border */
	border-radius: 5px; /* Rounded corners */
	cursor: pointer;
	font-size: 16px;
	transition: background-color 0.3s ease-in-out;
	/* Smooth transition on hover */
}

/* Style the button on hover */
.btn:hover {
	background-color: #0056b3; /* Darker color when hovered */
}
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300,600,400italic);
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -webkit-font-smoothing: antialiased;
  -moz-font-smoothing: antialiased;
  -o-font-smoothing: antialiased;
  font-smoothing: antialiased;
  text-rendering: optimizeLegibility;
}

body {
  font-family: "Roboto", Helvetica, Arial, sans-serif;
  font-weight: 100;
  font-size: 12px;
  line-height: 30px;
  color: #777;
  background: #4CAF50;
}

.container {
  width: 100%;
  margin: 0 auto;
  position: relative;
      border-radius: 18px;
  
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="tel"],
#contact input[type="url"],
#contact textarea,
#contact button[type="submit"] {
  font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
}

#contact {
  background: #F9F9F9;
  padding: 25px;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
  border-radius: 18px;
    margin-top: 1rem;
}


#contact h3 {
  display: block;
  font-size: 30px;
  font-weight: 300;
  margin-bottom: 10px;
}

#contact h4 {
  margin: 5px 0 15px;
  display: block;
  font-size: 13px;
  font-weight: 400;
}

fieldset {
  border: medium none !important;
  margin: 0 0 10px;
  min-width: 100%;
  padding: 0;
  width: 100%;
}

#contact input[type="text"],
#contact input[type="email"],
#contact input[type="tel"],
#contact input[type="url"],
#contact textarea {
  width: 100%;
  border: 1px solid #ccc;
  background: #FFF;
  margin: 0 0 5px;
  padding: 10px;
}

#contact input[type="text"]:hover,
#contact input[type="email"]:hover,
#contact input[type="tel"]:hover,
#contact input[type="url"]:hover,
#contact textarea:hover {
  -webkit-transition: border-color 0.3s ease-in-out;
  -moz-transition: border-color 0.3s ease-in-out;
  transition: border-color 0.3s ease-in-out;
  border: 1px solid #aaa;
}

#contact textarea {
  height: 100px;
  max-width: 100%;
  resize: none;
}

#contact button[type="submit"] {
  cursor: pointer;
  width: 100%;
  border: none;
  background: #4CAF50;
  color: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  font-size: 15px;
}

#contact button[type="submit"]:hover {
  background: #43A047;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active {
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.copyright {
  text-align: center;
}

#contact input:focus,
#contact textarea:focus {
  outline: 0;
  border: 1px solid #aaa;
}

::-webkit-input-placeholder {
  color: #888;
}

:-moz-placeholder {
  color: #888;
}

::-moz-placeholder {
  color: #888;
}

:-ms-input-placeholder {
  color: #888;
}
/* End */
</style>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>
<!-- Custom CSS -->

<!-- FontAwesome 5 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">


</head>
<body>

	<div class="sidenav">
		<div class="profile">


			<div class="name">Medlife</div>
			<div class="job">Profile Page</div>
		</div>

		<div class="sidenav-url">
			<div class="url">
				<a href="#profile" class="active">Profile</a>
				<hr align="center">
			</div>

			<div class="url">
				<a href="BookAppointmentServlet">Previous Appointment</a>
				<hr align="center">
			</div>
		</div>
	</div>
	<!-- Navbar top -->
	<div class="navbar-top">
		<div class="title">
			<h1>Profile</h1>
		</div>

		<!-- Navbar -->

	</div>
	<!-- End Navbar top -->

	<!-- Main -->
	<div class="main">
		<%
		String email = (String) session.getAttribute("loggedUser");
		User userObj = new User();
		UserDAO user = new UserDAO();
		userObj = user.FindUserByIdEmail(email);
		%>
		<h2>IDENTITY</h2>
		<div class="card">
			<div class="card-body">
				<a href="UserUpdate.jsp?email=<%=email%>"> <i
					class="fa fa-pen fa-xs edit"></i></a>
				<table>
					<tbody>

						<tr>
							<td>Username</td>
							<td>:</td>
							<td><%=userObj.getUsername()%></td>
						</tr>
						<tr>
							<td>Email</td>
							<td>:</td>
							<td><%=userObj.getEmail()%></td>
						</tr>
						
						<tr>
							<td>PhoneNumber</td>
							<td>:</td>
							<td><%=userObj.getPhonenumber()%></td>
						</tr>
						<tr>
							<td>Type</td>
							<td>:</td>
							<td><%=userObj.getType()%></td>
						</tr>
						<%

						%>

					</tbody>
				</table>

			</div>
		</div>
		<a href="#" class="btn btn-primary" id="show-form-link">Add more Details</a>
		
		<div class="container" id="detail-form-container" style="display: none;">
  <form id="contact" action="AddDetailServlet" method="post">
		<div class="container">  
  <form id="contact" action="AddDetailServlet" method="post">
    <h3>Detail Form</h3>

    <fieldset>
      <input placeholder="LicenseNumber"  name="license" type="text" tabindex="1" required pattern="[0-9]{8}">
    </fieldset>
    <fieldset>
      <input placeholder="certification" name="certification" type="url" tabindex="2" required>
    </fieldset>
    <fieldset>
      <input placeholder="Qualification" name="qualification"type="text" tabindex="3"   required pattern="[A-Za-z\s]+" >
    </fieldset>
    <fieldset>
      <input placeholder="specialist" name="specialist" type="text" tabindex="4" required >
    </fieldset>
    <fieldset>
      <input placeholder="Experience" name="experience" type="text" tabindex="4" required pattern="[0-9]{2}"  >
    </fieldset>
    <fieldset>
      <input placeholder="Image" name="image" type="url" tabindex="2" required>
    </fieldset>
     <input type="number" name="userId" value=${userObj.getuserId()}>
     
    
      <button name="submit" type="submit" id="contact-submit" data-submit="...Sending">Submit</button>
      
  
</div>
		
	</div>


	<!-- End Main -->
</body>
<script>
// Get references to the link and form container
const showFormLink = document.getElementById('show-form-link');
const detailFormContainer = document.getElementById('detail-form-container');


showFormLink.addEventListener('click', function (event) {
  event.preventDefault();
  detailFormContainer.style.display = 'block';
});
</script>
</html>
