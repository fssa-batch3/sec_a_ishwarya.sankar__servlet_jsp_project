<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<style>
   
*, *::before, *::after {
   box-sizing: border-box;
}

body {
   font-family: sans-serif;
   font-size: 1em;
   color: #333;
}

h1 {
  font-size: 1.4em;
}

em {
   font-style: normal;
}

a {
   text-decoration: none;
   color: inherit;
} 

/* Layout */
.s-layout {
   display: flex;
   width: 100%;
   min-height: 100vh;
}

.s-layout__content {
   display: flex;
   justify-content: center;
   align-items: center;
   flex: 1;
}

/* Sidebar */
.s-sidebar__trigger {
   z-index: 2;
   position: fixed;
   top: 0;
   left: 0;
   width: 100%;
   height: 4em;
 
}

.s-sidebar__trigger > i {
   display: inline-block;
   margin: 1.5em 0 0 1.5em;
   color: #f07ab0;
}

.s-sidebar__nav {
   position: fixed;
   top: 0;
   left: -15em;
   overflow: hidden;
   transition: all .3s ease-in;
   width: 15em;
   height: 100%;
   background: #49875a;
   color: rgba(202, 186, 186, 0.7);
}

.s-sidebar__nav:hover,
.s-sidebar__nav:focus,
.s-sidebar__trigger:focus + .s-sidebar__nav,
.s-sidebar__trigger:hover + .s-sidebar__nav {
   left: 0px;
}

.s-sidebar__nav ul {
   position: absolute;
   top: 4em;
   left: 0;
   margin: 0;
   padding: 0;
   width: 15em;
}

.s-sidebar__nav ul li {
   width: 100%;
}

.s-sidebar__nav-link {
   position: relative;
   display: inline-block;
   width: 100%;
   height: 4em;
}

.s-sidebar__nav-link em {
   position: absolute;
   top: 50%;
   left: 4em;
   transform: translateY(-50%);
}

.s-sidebar__nav-link:hover {
   background: #4d6276;
}

.s-sidebar__nav-link > i {
   position: absolute;
   top: 0;
   left: 0;
   display: inline-block;
   width: 4em;
   height: 4em;
}

.s-sidebar__nav-link > i::before {
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
}

.section{
     display: flex;
     justify-content: space-around;
     margin-top: 250px;
     height:40.6em;
}
.para1 h1{
  font-size: 55px;
  
  color: #03C988;;
}
img{
   position: relative; 
  top:20px;
  left: 15%;
}
.para1 p{
  font-size: 24px;
  
  color: #101211;;
}

</style>
<body>
    <div class="s-layout">
        <!-- Sidebar -->
        <div class="s-layout__sidebar">
          <a class="s-sidebar__trigger" href="#0">
             <i class="fa fa-bars"></i>
          </a>
        
          <nav class="s-sidebar__nav">
             <ul>
                <li>
                   <a class="s-sidebar__nav-link" href="./index.jsp">
                      <i class="fa fa-home"></i><em>Home</em>
                   </a>
                </li>
                <li>
                   <a class="s-sidebar__nav-link" href="./usertable.jsp">
                     <i class="fa fa-user"></i><em>User's Profile</em>
                   </a>
                </li>
                <li>
                  <a class="s-sidebar__nav-link" href="">
                    <i class="fa fa-user"></i><em>Doctor's Detail</em>
                  </a>
               </li>
                <li>
                   <a class="s-sidebar__nav-link" href="../pages/newdoc.adding.html">
                      <i class="fa fa-camera"></i><em>Add doctors</em>
                   </a>
                </li>
                <li>
                  <a class="s-sidebar__nav-link" href="../pages/table2.html">
                     <i class="fa fa-camera"></i><em>Patient's List</em>
                  </a>
               </li>
             </ul>
          </nav>
        </div>
        
        <!-- Content -->
        <div class="section">
            <div class="para1">
              <h1>This is only accesible for Admin</h1>
            
              <p class = "text text-md">Lorem, ipsum dolor sit amet consectetur adipisicing elit.<br> Totam, nulla odit esse necessitatibus corporis voluptatem?</p>
              
            
            </div>
            <div class="img">
              <img src="../assests/image/about-img (1).png" style="height:500px">
            </div>
            </div>
            
            