<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medlife</title>
</head>
<body>
	<!DOCTYPE html>
<html>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');

.header-fixed 
 * {
	display: flex;
	justify-content: space-between;
	z-index: 2;
	background-color: white;
	font-family: "poppins"
}

body {
	margin: 0;
	padding: 0;
}

/* Style the header container */
.header-fixed {
	/* Background color for the header */
	color: #fff; /* Text color */
	width: 100%;
	position: fixed;
	top: 0;
	z-index: 1000; /* Ensure the header is on top of other content */
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
	/* Add a shadow to the header */
}

/* Center the content in the header */

/* Style the logo */
.header-limiter h1 a {
	text-decoration: none; /* Remove underline from the link */
	color: #fff; /* Text color for the logo */
	font-size: 29px; /* Adjust the font size as needed */
}

/* Style the navigation links */
.header-limiter nav a {
	/*     text-decoration: none; /* Remove underline from the links */ */
	color: #fff; /* Text color for the links */
	margin-right: 20px; /* Adjust the spacing between links */
	font-weight: bold; /* Make the text bold */
}

/* Style the navigation links on hover */
.header-limiter nav a:hover {
	color: #ff5733; /* Change text color on hover */
}

.header-limiter {
	box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.9);
	padding: 20px 90px;
	height: 80px;
	color: #ffffff;
	box-sizing: border-box;
	top: -100px;
	-webkit-transition: top 0.3s;
	transition: top 0.3s;
}

.header-fixed .header-limiter {
	text-align: center;
	margin: 0 auto;
	space-between: 20px;
}

/*	The header placeholder. It is displayed when the header is fixed to the top of the
	browser window, in order to prevent the content of the page from jumping up. */
.header-fixed-placeholder {
	height: 80px;
	display: none;
}

/* Logo */
.header-fixed .header-limiter h1 {
	float: left;
	line-height: 40px;
	margin: 0;
}

.header-fixed .header-limiter h1 span {
	color: black;
}

/* The navigation links */
.header-fixed .header-limiter a {
	color: #26d832;
	text-decoration: none;
}

.header-fixed .header-limiter nav {
	line-height: 40px;
	float: right;
}

.header-fixed .header-limiter nav a {
	display: inline-block;
	padding: 0 5px;
	text-decoration: none;
	color: darkviolet;
	opacity: 0.9;
}

.header-fixed .header-limiter nav a:hover {
	opacity: 1;
}

/* Fixed version of the header */
body.fixed .header-fixed {
	padding: 10px 40px;
	height: 50px;
	position: fixed;
	width: 100%;
	top: 0;
	left: 0;
	z-index: 1;
}

body.fixed .header-fixed-placeholder {
	display: block;
}

body.fixed .header-fixed .header-limiter h1 {
	font-size: 24px;
	line-height: 30px;
}

body.fixed .header-fixed .header-limiter nav {
	line-height: 28px;
	font-size: 13px;
}

/* Making the header responsive */
@media all and (max-width: 600px) {
	.header-fixed {
		padding: 20px 0;
		height: 75px;
	}
	.header-fixed .header-limiter h1 {
		float: none;
		margin: -8px 0 10px;
		text-align: center;
		font-size: 24px;
		line-height: 1;
	}
	.header-fixed .header-limiter nav {
		line-height: 1;
		float: none;
	}
	.header-fixed .header-limiter nav a {
		font-size: 13px;
	}
	body.fixed .header-fixed {
		display: none;
	}
}

/*
	 We are clearing the body's margin and padding, so that the header fits properly.
	 We are also adding a height to demonstrate the scrolling behavior. You can remove
	 these styles.
 */
body {
	margin: 0;
	padding: 0;
}

1
 
button {
	background-color: green;
	padding: 10px;
	border: none;
	font-size: 26px;
}

.btn1 {
	padding: 10px 20px;
	background-color: #03C988;
	color: #fff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
	margin-top: 20px;
	display: block;
}

.btn1:hover {
	background-color: grey;
}

a {
	text-decoration: none;
	cursor: pointer;
}

.main1 {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100px;
	/* background: #fff; */
	/* position: f;  */
	top: 1100px;
}

.container {
	display: flex;
	justify-content: space-between;
	flex-wrap: wrap;
	padding: 0px 75px 300px 75px;
}

.container:hover {
	color: rebeccapurple;
}

.container .box {
	background: rgb(241, 235, 244);
	padding: 100px 40px 60px;
	box-shadow: 0 15px 45px rgba(172, 72, 72, 0.1);
	flex: 1;
	/* width:100%;  */
}

.container .box:before {
	content: "";
	/* position: absolute; */
	/* width:28%; */
	/* height:0%; */
	background: rgba(144, 92, 140, 0.154);
	transform: scaleY(0);
	transform-origin: top;
	transition: transform 0.5s;
	margin-top: auto;
}

.container .box:hover:before {
	transform: scaleY(1);
	transform-origin: bottom;
	transition: 0.5s;
}

.container .box h2 {
	position: absolute;
	font-size: 4rem;
	font-weight: 800;
	z-index: 1;
	opacity: 0.5;
	transition: 0.5s;
	margin-bottom: -2px;
	justify-content: center;
	display: flex;
	margin-right: 100%;
	margin-top: -6%;
}

.container .box:hover h2 {
	opacity: 1;
	color: rgb(67, 58, 58);
	transform: translateY(-40px);
}

.container .box p {
	font-size: 18px;
	color: #100115;
}

.container .box h3 {
	/* position: relative; */
	font-size: 1.5rem;
	z-index: 2;
	color: #333;
	transition: 0.5s;
}

.opacity {
	/* position: absolute; */
	top: 1300px;
	display: flex;
}

.hero {
	background-color: aqua;
	background-size: cover;
}

.main-branch {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	flex-direction: column;
	margin-top: 0px;
}

span img {
	position: relative;
	top: 750px;
	left: 15%;
}

.app {
	top: 20px;
	left: 50%;
	/* position: relative; */
}

.vcall-h2 {
	position: relative;
	/* top: 2070px; */
	left: 55%;
	margin-top: 80px;
}

.vcall-h2:hover {
	color: royalblue;
}

.vcall-h6 {
	position: relative;
	/* top:2050px; */
	left: 50%;
}

.vcall-h6:hover {
	/* font-size: 29px; */
	color: rgba(176, 18, 124, 0.691)
}

footer {
	background-color: #ecf1f9;
	position: relative;
	/* top: 10000; */
	width: 100%;
	padding: 3rem 1rem;
	/* left:100px; */
}

.container-1 {
	/* max-width: 1100px; */
	/* margin: 0 auto; */
	display: flex;
	margin-left: 40px;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.row {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.col {
	min-width: 250px;
	color: rgb(8, 8, 8);
	padding: 0 2rem;
}

.col .logo {
	width: 100px;
	margin-bottom: 25px;
}

.col h3 {
	color: rgb(15, 14, 14);
	margin-bottom: 20px;
	position: relative;
	cursor: pointer;
}

.col h3::after {
	content: '';
	height: 3px;
	width: 0px;
	background-color: rgba(182, 59, 96, 0.903);
	bottom: 0;
	left: 0;
	transition: 0.3s ease;
}

.col h3:hover::after {
	width: 30px;
}

.col .social a i {
	color: rgb(117, 48, 48);
	margin-top: 2rem;
	margin-right: 5px;
	transition: 0.3s ease;
}

.col .social a i:hover {
	transform: scale(1.5);
	filter: grayscale(25);
}

.col .links a {
	display: block;
	text-decoration: none;
	color: #252526;
	margin-bottom: 5px;
	position: relative;
	transition: 0.3s;
}

.col .links a::before {
	content: '';
	height: 6px;
	/* width:3px;  */
	position: absolute;
	top: 5px;
	left: -40px;
	background-color: rgb(147, 37, 37);
	transition: 0.5s ease;
	opacity: 0;
}

.col .links a:hover::before {
	opacity: 1;
}

.col .links a:hover {
	transform: translateX(-1px);
	color: rgb(111, 3, 110);
}

.col .contact-details {
	display: inline-flex;
	justify-content: space-between;
}

.col .contact-details i {
	margin-right: 15px;
}

.row .form {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 2rem 0;
}

.row .form input {
	background-color: rgb(42, 54, 77);
	border: 0;
	outline: none;
	padding: 14px 20px;
	border-radius: 6px;
	border-top-right-radius: 0;
	border-bottom-right-radius: 0;
}

.form button {
	padding: 14px 20px;
	border: 0;
	border-radius: 6px;
	border-top-left-radius: 0;
	border-bottom-left-radius: 0;
	background-color: rgb(249, 147, 178);
}

.gif {
	position: absolute;
	top: 210px;
	left: 840px;
}

.fq {
	display: flex;
	justify-content: center;
	margin-top: -800px;
	background-color: #e2e3db;
	height: 150px;
}

.faq1 {
	z-index: 0;
}

.benefits {
	background-color: #a49ba5;
}

.faqwhole {
	display: flex;
	justify-content: space-around;
	align-items: center;
	padding: 30px;
	gap: 200px;
}

.faqwh2 h1 {
	margin-top: 100px;
	color: rebeccapurple;
	align-items: center;
	justify-content: center;
	display: flex;
}

.faqwh2 h1:hover {
	color: red;
}

.faqwh2 h3 {
	color: #100115;
	display: flex;
	width: 100%;
	justify-content: space-around;
	align-items: center;
	padding: 20px;
}

.faqwh2 p {
	color: #100115;
	display: flex;
}

.faqwh2 {
	display: flex;
	flex-wrap: wrap;
	padding: 20px;
}

.ben {
	text-align: center;
	padding-top: 50px;
}

.ben:hover {
	color: violet
}

.sec {
	/* max-width: 400px; */
	flex-basis: 33.3%;
	/* border: 1px solid ; */
	padding: 20px;
}

.sec .h3 {
	display: flex;
	flex-direction: column;
}

* {
	font-family: 'Poppins', sans-serif;
	margin: 0px;
	padding: 0px;
	box-sizing: border-box;
	text-decoration: none;
	list-style-type: none;
	overflow-x: hidden;
}

.main {
	/* background:#e3e2e2; */
	box-shadow: 0 .5rem 1.5rem rgba(0, 0, 0, 0.9);
	display: flex;
	justify-content: space-between;
	width: 1490px;
	position: fixed;
	z-index: 2;
	background-color: white;
}

.main h1 {
	color: #03C988;;
	margin-top: 1em;
	margin-left: 2rem;
}

h1 span {
	color: black;
}

h1 span:hover {
	color: blue;
}

.imglogo {
	width: 250px;
	margin-top: -50px;
	margin-left: -50px;
}

.navbar {
	display: flex;
	justify-content: space-between;
	text-decoration: none;
	margin-right: 7em;
}

.navbar li {
	margin: 2.7em 0px 30px 40px;
	color: rgb(201, 219, 173);
}

h1 span {
	color: black;
}

.logo img {
	margin-top: -400px;
	margin-left: -30px;
}

.section {
	display: flex;
	justify-content: space-around;
	margin-top: 250px;
	height: 40.6em;
}

.edit {
	height: 20px;
	width: 20px;
	margin-top: 39px;
	margin-left: 50px;
}

.contact-left {
	margin-bottom: 50rem;
	height: 100%;
}

.contact-left iframe {
	width: 100%;
	height: 100%;
	-o-object-fit: cover;
	object-fit: cover;
}

.contact-right {
	padding: 5rem 4rem;
}

.contact-right form {
	margin-top: 5rem;
}

.form-element .form-control {
	width: 100%;
	background-color: #989b9f;
	border: none;
	outline: 0;
	padding: 1rem 1.6rem;
	margin-bottom: 1.6rem;
	color: var(--light-color);
}

.btn-submit {
	margin-top: 5rem;
}

.btn-submit i {
	margin-right: 2rem;
}

.open-button {
	background-color: #555;
	color: white;
	padding: 16px 20px;
	border: none;
	cursor: pointer;
	opacity: 0.8;
	position: fixed;
	bottom: 23px;
	right: 28px;
	width: 280px;
}

.chat-container {
	position: fixed;
	bottom: 20px;
	right: 20px;
	border: 1px solid #ccc;
	box-shadow: 2px 2px 5px #ccc;
	border-radius: 5px;
	width: 300px;
	height: 400px;
	display: none;
	z-index: 9999;
}

.chat-header {
	background-color: #eee;
	padding: 10px;
	border-top-left-radius: 5px;
	border-top-right-radius: 5px;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.chat-messages {
	height: 300px;
	overflow-y: scroll;
	padding: 10px;
}

.chat-input {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
}

.chat-input input[type="text"] {
	flex-grow: 1;
	margin-right: 10px;
	padding: 5px;
}

.chat-input button {
	padding: 5px 10px;
	border-radius: 5px;
	background-color: #007bff;
	color: #fff;
	border: none;
	cursor: pointer;
}

.chat-input button:hover {
	background-color: #0069d9;
}

.para1 h1 {
	font-size: 55px;
	color: #03C988;;
}

.contact {
	margin-left: 900px;
}

.contact-left {
	margin-bottom: 9rem;
	height: 100%;
}

.contact-right {
	padding: 5rem 4rem;
}

.contact-right form {
	margin-top: 5rem;
}

.form-element .form-control {
	width: 600px;
	background-color: #383938;
	border: none;
	outline: 0;
	padding: 1rem 1.6rem;
	margin-bottom: 1.6rem;
	color: var(--light-color);
}

.btn-submit {
	margin-top: 4rem;
}

.btn-submit i {
	margin-right: 2rem;
}

#submit {
	background-color: #03C988;
	padding: 20px;
	color: #fff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

#submit:hover {
	background-color: rgb(171, 119, 119);
}

@media screen and (max-width:410px) {
	body {
		padding: 0px;
		margin: 0px;
	}
	.header {
		display: flex;
		flex-direction: column;
		gap: 50px;
	}
	.navbar {
		display: flex;
		margin-left: 20px;
		gap: 10px;
	}
	.navbar a {
		font-size: 16px;
	}
	.icong img {
		margin-top: -25px;
	}
	.p1 h1 {
		font-size: 50px;
	}
	.gif {
		display: flex;
		margin-left: -1280px;
		margin-top: 50px;
	}
}
</style>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Basic Header</title>

<link rel="stylesheet" href="assets/demo.css">
<link rel="stylesheet" href="assets/header-fixed.css">
<link href='https://fonts.googleapis.com/css?family=Cookie'
	rel='stylesheet' type='text/css'>

</head>

<body>

	<header class="header-fixed">

		<div class="header-limiter">


			<h1>
				<a href="#">MED<span>LIFE</span></a>
			</h1>

			<nav>
				<a href="#">Home</a> <a href="#">About</a> <a href="#">Service</a> <a
					href="medicineList.jsp">Medicines</a> <a href="#">Expert</a> <a
					href="#">Review</a> <a href="#">Profile</a> <a href="LogoutServlet">Logout</a>

			</nav>

		</div>

	</header>

	<!-- You need this element to prevent the content of the page from jumping up -->
	<div class="header-fixed-placeholder"></div>
	<div class="section">
		<div class="para1">
			<h1>
				Stay Safe<br> Stay Healthy
			</h1>

			<p class="text text-md">
				Lorem22, ipsum dolor sit amet consectetur adipisicing elit.<br>
				Totam, nulla odit esse necessitatibus corporis voluptatem?
			</p>
			<button class="btn1">
				<a href="./pages/online.html">FREE APPOINMENT</a>
			</button>


		</div>
		<div class="img">
			<img
				src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu-6hqgI6nJqu_7HmbzTq5rYQ0eZKvJr1qJWNJt1dTqTPG0gTn89U4cdjVH1Qxr7TgJws&usqp=CAU"
				style="height: 500px">
		</div>
	</div>


	<div class="main1">
		<!-- <h1>WHY CHOOSE US</h1> -->
		<div class="container">
			<div class="box">
				<span class="mdi mdi-hours-24"></span>

				<h3>24 HOURS SERVICE</h3>
				<!-- <i class="fa-solid fa-hospital"></i> -->
				<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Nesciunt, reprehenderit! Error cupiditate dignissimos praesentium,
					tempore nemo labore aperiam deserunt illum veniam perspiciatis</p>
			</div>
		</div>
		<div class="container">
			<div class="box">
				<h3>EMERGENCY CARE</h3>
				<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
					Nesciunt, reprehenderit! Error cupiditate dignissimos praesentium,
					tempore nemo labore aperiam deserunt illum veniam perspiciatis</p>
			</div>
		</div>
		<div class="container">
			<div class="box">
				<h3>FACILITIES</h3>
				<p>loorem ipsum dolor, sit amet consectetur adipisicing elit.
					Nesciunt, reprehenderit! Error cupiditate dignissimos praesentium,
					tempore nemo labore aperiam deserunt illum veniam perspiciatis</p>
			</div>
		</div>
	</div>

	<div class="swiper">
		<div class="wrap">
			<div class="swipimg">
				<!-- <img src="./assests/image/istockphoto-1342708859-170667a.jpg"> -->
			</div>
		</div>

	</div>
	</div>

	<!-- The content of your page would go here. -->



	<div class="swiper">
		<div class="wrap">
			<div class="swipimg">
				<!-- <img src="./assests/image/istockphoto-1342708859-170667a.jpg"> -->
			</div>
		</div>

	</div>
	</div>
	<!-- //download the app// -->

	<span> <img src="./assests/image/vcall.png" width="500"
		height="600" alt="">
		<h2 class="vcall-h2">Download the MEDLIFE App</h2>
		<br>
		<h4 class="vcall-h6">
			Access video consultation with India’s top doctors on the Practo app.
			<BR> Connect with doctors online, available 24/7, from the
			comfort of your BR home.
		</h4> <img class="app play" src="./assests/image/apple_store.png"> <img
		class="app apple" src="./assests/image/google_play.png">
	</span>

	<!-- hospital things -->
	<section class="fq">
		<div class="faqwhole">
			<h1 class="faq1">
				2,00,000+<br>Happy Users
			</h1>
			<h1 class="faq2">
				20,000+<br>Verified doctors
			</h1>
			<h1 class="faq3">
				25+<br>Specialist
			</h1>
			<h1 class="faq4">
				4.5/5<br>Rating
			</h1>
		</div>
	</section>

	<!-- ---- -->
	<section class="benefits">

		<h1 class="ben">BENEFITS OF CONSULTING HERE</h1>
		<div class="faqwh2">
			<div class="sec">
				<h3>
					Consult Top Doctors 24x7 <img src="./assests/image/24-7.png"
						height="60px">
				</h3>
				<p>Connect instantly with a 24x7 specialist or choose to video
					visit a particular doctor.</p>
			</div>
			<div class="sec">
				<h3>
					Convenient and Easy <img src="./assests/image/easy-to-use.png"
						height="60px">
				</h3>
				<p>Start an instant consultation within 2 minutes</p>
			</div>
			<div class="sec">
				<h3>
					100% Safe Consultations <img src="./assests/image/security.png"
						height="60px">
				</h3>
				<p>Be assured that your online consultation will be fully
					private and secured.</p>
			</div>
			<div class="sec">
				<h3>
					Similar Clinic Experience <img src="./assests/image/security.png"
						height="60px">
				</h3>
				<p>Experience clinic-like consultation through a video call with
					the doctor. Video consultation is available only on the Practo app
				</p>
			</div>
			<div class="sec">
				<h3>
					Free Follow-up <img src="./assests/image/medical-prescription.png"
						height="60px">
				</h3>
				<p>Get a valid digital prescription and a 7-day, free follow-up
					for further clarifications</p>

			</div>
		</div>
	</section>


	<section id="contact" class="contact py">
		<div class="container grid">
			<div class="contact-right text-white text-center bg-blue">
				<div class="contact-head">
					<h3 class="lead">Contact Us</h3>

				</div>
				<form id="newform">
					<div class="form-element">
						<input type="text" class="form-control" id="name"
							placeholder="Your name">
					</div>
					<div class="form-element">
						<input type="email" class="form-control" id="email"
							placeholder="Your email">
					</div>
					<div class="form-element">
						<textarea rows="5" placeholder="Your Message" id="message"
							class="form-control"></textarea>
					</div>
					<button type="submit" id="submit">Send Message</button>
				</form>
			</div>
		</div>
	</section>
	<div class="map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15551.576567487462!2d80.24327299999999!3d12.978622!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1673331292179!5m2!1sen!2sin"
			width="1485" height="500" style="border: 0;" allowfullscreen=""
			loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	<section class="main-branch">
		<footer>
			<div class="container-1">
				<div class="row">
					<div class="col" id="company">
						<img src="" alt="" class="logo">
						<p>MediFee aims to be the one-stop online destination for
							India that gives people access to all information regarding
							prices of treatments and tests to enable people in making
							informed decisions about healthcare.</p>
						<a href="ListMedicineServlet">ListMedicine</a>
						<div class="social">
							<a href="#"><i class="fab fa-facebook"></i></a> <a href="#"><i
								class="fab fa-instagram"></i></a> <a href="#"><i
								class="fab fa-youtube"></i></a> <a href="#"><i
								class="fab fa-twitter"></i></a> <a href="#"><i
								class="fab fa-linkedin"></i></a>
						</div>
					</div>


					<div class="col" id="services">
						<h3>Top Services</h3>
						<div class="links">
							<a href="#">neurology</a> <a href="#">pulmonary</a> <a href="#">Paedtrician</a>
							<a href="#">Gynocology</a>
						</div>
					</div>

					<div class="col" id="useful-links">
						<h3>Links</h3>
						<div class="links">
							<a href="#">About</a> <a href="#">Services</a> <a href="#">Our
								Policy</a> <a href="#">Help</a>
						</div>
					</div>

					<div class="col" id="contact">
						<h3>Contact</h3>
						<div class="contact-details">
							<i class="fa fa-location"></i>
							<p>
								FF-42, Procube Avenue, <br> NY, USA
							</p>
						</div>
						<div class="contact-details">
							<i class="fa fa-phone"></i>

							<p>+1-8755856858</p>
						</div>
					</div>
				</div>
			</div>
			</div>
		</footer>
	</section>

</body>

</html>

