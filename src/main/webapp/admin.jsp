<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;1,400&display=swap');

:root{
  --primary: #1f2e88 ;
  --secondary: #2f66d4 ;
  --hover: #a2d9f5;
  --black: #333;
  --white: #fff;
  --light-color: #666;
  --light-bg: #eee;
  --border:.2rem solid rgba(0,0,0,0.1);
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
  background: url(https://t3.ftcdn.net/jpg/01/44/82/22/360_F_144822260_Hd6NpySsxX5KrXj5W5BuOQlEdo9Hl2Kt.jpg) no-repeat;
  background-size: cover;
  background-position: center;
}

.home .content{
  max-width: 60rem;
  padding-top: 10rem;
  padding-left: 6rem; /*rtl*/
}

.home .content h3{
  font-size: 6rem;
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

/* end services section */

/* team section */

.team .slide{
  text-align: center;
}

.team .slide .image{
  position: relative;
  overflow: hidden;
}

.team .slide .image img{
  width: 100%;
}

.team .slide .image .share{
  padding: 2rem;
  position: absolute;
  bottom: -10rem;
  left: 0;
  right: 0;
  background: rgba(0,0,0,0.8);
}

.team .slide:hover .image .share{
  bottom: 0;
}

.team .slide .image .share a{
  font-size: 3rem;
  margin: 0 1rem;
  color: var(--white);
  
}

.team .slide .image .share a:hover{
  color: var(--secondary);
}

.team .slide .content{
  display: flex;
  padding-top: 1rem;
  align-items: center;
  justify-content: space-between;
}

.team .slide .content h3{
  font-size: 2rem;
  color: var(--black);
}

.team .slide .content span{
  font-size: 1.5rem;
  line-height: 2;
  color: var(--light-color);
}

/* end team section */

/* pricing */
.pricing{
  background-color: var(--light-bg);
}

.pricing .box-container{
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  justify-content: center;
}

.pricing .box-container .box{
  height: 46rem;
  width: 30rem;
  margin: 2rem 4rem;
  border-radius: 1rem;
  box-shadow: var(--box-shadow);
  text-align: center;
  overflow: hidden;
  position: relative;
  background: var(--white);
  z-index: 1;
}

.pricing .box-container .active{
  background: var(--hover);
}

.pricing .box-container .box .title{
  margin: 3rem 0;
  font-size: 2.2rem;
  color: var(--black);
  text-transform: uppercase;
}

.pricing .box-container .box .price{
  color: var(--primary);
  margin-bottom: 5rem;
}

.pricing .box-container .box .price .currency{
  font-size: 4rem;
  line-height: 3.5rem;
  font-weight: 300;
}

.pricing .box-container .box .price .amount{
  font-size: 5.8rem;
  line-height: 4.5rem;
  font-weight: 700;
}

.pricing .box-container .box .price .duration{
  font-size: 1.5rem;
  font-weight: 400;
  letter-spacing: .2rem;
}

.pricing .box-container .box ul li{
  text-align: left;/*rtl*/
  font-size: 1.6rem;
  padding-left: 3.5rem; /*rtl*/
  margin:2rem auto;
  color: var(--light-color);
  text-transform: uppercase;
}

.pricing .box-container .box ul li i{
  padding: 0 1rem;
  color: var(--secondary);
}
/* end pricing */

/* blog */
.blog .box-container{
  display: grid;
  grid-template-columns:repeat(auto-fit,minmax(30rem ,1fr));
  gap: 1.5rem;
}

.blog .box-container .box{
  border: var(--border);
/*   cursor: pointer; */
}

.blog .box-container .box .image{
  height: 25rem;
  width: 100%;
  overflow: hidden;
}

.blog .box-container .box .image img{
  height: 100%;
  width: 100%;
  object-fit: cover;
}

.blog .box-container .box:hover .image img{
  transform: scale(1.2);
}

.blog .box-container .box .content{
  padding: 2rem 1.5rem;
}

.blog .box-container .box .content .link{
  display: inline-block;
  margin-bottom: 3rem;
  padding: .6rem 1.5rem;
  background: var(--primary);
  color: var(--white);
  font-size: 1.4rem;
}

.blog .box-container .box .content .link:hover{
  background: var(--secondary);
}

.blog .box-container .box .content .icons{
  padding-bottom: 1.7rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.blog .box-container .box .content .icons a{
  font-size: 1.4rem;
  letter-spacing: .15rem;
  color: var(--light-color);
}

.blog .box-container .box .content .icons a:hover{
  color:var(--primary);
}

.blog .box-container .box .content .icons a i{
  color: var(--primary);
  padding-right: .5rem;
}

.blog .box-container .box .content h3{
  font-size: 2.2rem;
  color: var(--black);
}

.blog .box-container .box .content p{
  padding: 1rem 0;
  font-size: 1.4rem;
  color: var(--light-color);
  line-height: 2;
}
/* end blog */

/* contact */
.contact{
  background: var(--light-bg);
}

.contact form{
  padding: 2rem;
  background: var(--white);
  max-width: 50rem;
  margin: 0 auto;
  border-radius: .5rem;
}

.contact form span{
  font-size: 1.7rem;
  color: var(--primary);
}

.contact form .input-box{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.contact form .input-box input{
  padding: 1rem;
  margin: 1rem 0;
  font-size: 1.7rem;
  color: var(--black);
  text-transform: capitalize;
  background: var(--light-bg);
  border-radius: .5rem;
  width: 49%;
}

.contact form .box{
  margin: 1rem 0;
  width: 100%;
  background: var(--light-bg);
  border-radius: .5rem;
  padding: 1rem;
  font-size: 1.7rem;
  color: var(--black);
  text-transform: capitalize;
}

/* end contact */

/* footer */
.footer{
  text-align: center;
}

.footer .box-container{
  display: grid;
  grid-template-columns: repeat(auto-fit,minmax(25rem,1fr));
  gap: 2rem;
}

.footer .box-container .box h3{
  font-size: 2.2rem;
  padding: 1rem 0;
  color: var(--secondary);
}

.footer .box-container .box p{
  font-size: 1.5rem;
  line-height: 2;
  color: var(--light-color);
  padding: .5rem 0;
}

.footer .box-container .box .share{
  margin-top: 1rem;
}

.footer .box-container .box .share a{
  height: 4.5rem;
  width: 4.5rem;
  background: var(--primary);
  color: var(--white);
  border-radius: 10%;
  line-height: 4.5rem;
  font-size: 1.7rem;
  margin-right: .3rem;
  text-align: center;
}

.footer .box-container .box .share a:hover{
  background: var(--secondary);
}

.footer .box-container .box .link{
  display: block;
  font-size: 1.7rem;
  line-height: 2;
  color: var(--primary);
  padding: .5rem 0;
}

.footer .box-container .box .link:hover{
  color: var(--hover);
}

.footer .credit{
  margin-top: 3rem;
  padding-top: 3rem;
  font-size: 2rem;
  text-align: center;
  text-transform: capitalize;
  color: var(--primary);
  border-top: .1rem solid var(--secondary);
}

.footer .credit i{
  color: var(--hover);
}

.footer .credit span{
  color: var(--secondary);
}

/* end footer */

/* media queries */
</style>
<title>Insert title here</title>

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
    <a href="#services">services</a>
    <a href ="../pages/nwproifle.html">Profile</a>
    <a href="../index.html" class="out">Logout</a>
    
  </nav>
  <!--   end navbar -->
  <a href="../pages/table.html" class="btn">Booked Patient</a>
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

</section>

<!-- end about -->

<!-- services -->

<section id="services" class="services">

  <h1 class="heading"> our services </h1>

  <div class="box-container">
    <!--     start field -->
    <div class="box">
      <img src="https://us.123rf.com/450wm/paladjai/paladjai2003/paladjai200300008/141737198-dental-cartoon-of-a-tooth-doctor-and-calendar-illustration-cartoon-character-vector-design-on-blue-b.jpg?ver=6" alt="teeth appointment illustration">
      <h3>online schedule</h3>
      <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque quasi.</p>
    </div>
    <!--     end field -->

    <!--     start field -->
    <div class="box">
      <img src="https://drsmilez.com/wp-content/uploads/2021/12/cartoon-dental-care-concept-illustration_23-2149022909.jpg" alt="dental care">
      <h3>cosmetic feeling</h3>
      <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque quasi.</p>
    </div>
    <!--     end field -->

    <!--     start field -->
    <div class="box">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTRfOoFKt4mVRUvZlYOF1Lp3hbFLeKbSEryobn54WC-Rtd4s1DTkDeaLvr6C0YTz4xltKU&usqp=CAU" alt="oral hygiene">
      <h3>oral hygiene experts</h3>
      <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Doloremque quasi.</p>
    </div>
    <!--     end field -->

  </div>

</section>
</body>
</html>