<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,400&display=swap');

:root{
  --primary: #1f2e88 ;
  --secondary: #2f66d4 ;
  --black: #333;
  --white: #fff;
  --light-color: #666;
  --light-bg: #eee;
  --box-shadow:0 .5rem 1rem rgba(0,0,0,0.1);
}

*{
  font-family: 'Poppins', sans-serif;
  margin:0;
  padding: 0;
  box-sizing:border-box;
  text-decoration: none;
  text-transform: capitalize;
  outline: none;
  border: none;
  transition: 0.2s linear;
}

html{
  font-size: 62.2%;
  overflow-x: hidden;
  scroll-padding-top: 9rem;
  scroll-behavior: smooth;
}

html::-webkit-scrollbar{
  width: .8rem;
}

html::-webkit-scrollbar-track{
  background: transparent;
}

html::-webkit-scrollbar-thumb{
  background: var(--primary);
  border-radius: 5rem;
}

/* global classes */

section{
  padding: 5rem 7%;
}

.heading{
  font-size: 4rem;
  text-align: center;
  color: var(--black);
  text-transform: uppercase;
  font-weight: bolder;
  margin-bottom: 3rem;
}

.btn{
  margin-top: 1rem;
  display: inline-block;
  padding: 1rem 3rem;
  border-radius: .5rem;
  background: var(--primary);
  font-size: 1.7rem;
  color: var(--white);
  cursor: pointer;
}

.btn:hover{
  background: var(--secondary);
}

/* header */
.header{
  position: fixed;
  display: flex;
  align-items: center;
  justify-content: space-between;
  top:0;
  left: 0;
  right: 0;
  padding: 2rem 9%;
  background: var(--white);
  box-shadow: var(--box-shadow);
  z-index: 1000;
}

.header .logo{
  font-size: 2.5rem;
  font-weight: bolder;
  color: var(--black);
}

.header .logo i{
  color: var(--primary);
  padding-right: .5rem;
}

.header .navbar a{
  font-size: 1.7rem;
  color: var(--black);
  margin: 0 1rem;
}

.header .navbar a:hover{
  color: var(--primary);
}

.header .btn{
  margin-top: 0;
}

#menu-btn{
  font-size: 2.5rem;
  cursor: pointer;
  color: var(--black);
  margin-left: 1.7rem;
  display: none;
}

#menu-btn:hover{
  color: var(--primary);
}

/* end header */

/* home */
.home{
  min-height: 100vh;
  display: flex;
  align-items: center;
  /* background: url(https://media.istockphoto.com/id/1418999473/photo/doctors-comforting-disabled-elderly-patient.jpg?s=612x612&w=0&k=20&c=ggVR5D9U8IY7irIrgvfqSmlLwA7se4vc2fRSAjV2lSs=) no-repeat  ; */
  background-size: cover;
  filter: blur(-1px); /* Add a blur effect to the entire background */
  background-position: center;
}

.home .content{
  max-width: 60rem;
  padding-top: 10rem;
  padding-left: 6rem; /*rtl*/
}

.home .content h2{
  font-size: 3rem;
  color: var(--black);
  line-height: 1.2;
}

.home .content p{
  line-height: 2;
  font-size: 1.5rem;
  color: var(--light-color);
  padding: 1rem 0;
}

/* end home */

/* about us */
.about .row{
  display: flex;
  align-items: center;
  flex-wrap: wrap;
  gap: 2rem;
}

.about .row .image{
  flex: 1 1 40rem;
}

.about .row .image img{
  width: 100%;
  height: 100%;
  border-radius: 5rem;
}

.about .row .content{
  flex: 1 1 40rem;
}

.about .row .content h3{
  color: var(--black);
  font-size: 3.5rem;
  line-height: 1.5;
}

.about .row .content p{
  font-size: 1.4rem;
  color: var(--light-color);
  padding: 1rem 0;
  line-height: 2;
}
/* end about */

/* services */
.services{
  background: var(--light-bg);
}

.services .box-container{
  display: grid;
  grid-template-columns: repeat(auto-fit,minmax(30rem,1fr));
  gap: 2rem;
}

.services .box-container .box{
  padding: 4rem;
  text-align: center;
  background: var(--white);
  box-shadow: var(--box-shadow);
  border-radius: 5rem;
}

.services .box-container .box:hover{
  background: var(--hover);
  cursor: context-menu;
}

.services .box-container .box img{
  margin: 1rem 0;
  height: 17rem;
  border-radius: 5rem;
}

.services .box-container .box h3{
  font-size: 2rem;
  color: var(--black);
  padding: 1rem 0;
}

.services .box-container .box p{
  font-size: 1.5rem;
  line-height: 2;
  color: var(--light-color);
}


/* end footer */

/* media queries */


</style>
</head>
<body>

/<!-- start header -->
<header class="header">

  <!--   start logo -->
  <a href="#" class="logo">
    <i class="fas fa-tooth"></i>
MEDLIFE  </a>

  <!--   start navbar -->
  <nav class="navbar">
    <a href="#home">home</a>
    <a href="#about">about</a>
    <a href ="../pages/nwproifle.html">Profile</a>
    <a href="../index.html" class="out">Logout</a>
    
  </nav>
  <!--   end navbar -->
  <a href="DoctorAppointment.jsp" class="btn">Booked Patient</a>
  <div id="menu-btn" class="fas fa-bars"></div>

</header>
<!-- end header -->

<!-- start home -->
<section id="home" class="home">

  <div class="content">

    <h2>"Medical care is not just <br>about treating illnesses;<br> it's about healing hearts and comforting souls."</h3>
    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Deserunt animi, alias cumque iure molestiae excepturi ?</p>
    <a href="../index.html" class="btn">Home Page</a>

  </div>

</section>
<!-- end home -->

<!-- about -->

<section id="about" class="about">

  <h1 class="heading"> about us </h1>

  <!--   content -->
  <div class="row">

    <!--     image -->
    <div class="image">
      <img src="https://images.pexels.com/photos/3845810/pexels-photo-3845810.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="medical equipment">
    </div>

    <!--     info -->
    <div class="content">
      <h3>our clinic is made for you to be smiling all the time</h3>
      <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta natus alias eaque sapiente tempore sint expedita perferendi.</p>
      <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Dicta natus alias eaque sapiente tempore sint expedita perferendi.</p>
      <a href="#" class="btn">read more</a>
    </div>

  </div>
</body>
</html>