<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.fssa.medlife.model.Doctor"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <link rel="stylesheet" href="./assests/style.css/about.css">

</head>
<body>
<jsp:include page="/header.jsp"></jsp:include>

<style>

 
:root{
    --green:#0e6453 ;
    --black:#444;
    --light-color:#585858;
    --box-shrgb(57, 201, 173)rem .5rem 0 rgba(22, 160, 133, .2);
    --text-shadow:.4rem .4rem 0 rgba(0, 0, 0, .2);
    --border:.2rem solid var(--green);
}

*{
    font-family: 'poppins', sans-serif;
    margin:0; padding: 0;
    box-sizing: border-box;
    outline: none; border: none;
    text-decoration: none;
}





/* booking section start */


.book .row{
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap:2rem;
    
}
 
.book .row .image{
    flex:1 1 45rem;
}

.book .row .image img{
    width: 100%;
}

.book .row form{

 flex:1 1 25rem;
     background: #fff;
    border:var(--border);
    box-shadow: var(--box-shadow);
    text-align: center;
    padding: 2rem;
    border-radius: .5rem;
    margin-top:150px;
}

.book .row form h3{
    color:var(--black);
    padding-bottom: 1rem;
    font-size: 3rem;
}

.book .row form .box{
    width: 100%;
    margin:.7rem 0;
    border-radius: .5rem;
    border:var(--border);
    font-size: 1.6rem;
    color: var(--black);
    text-transform: none;
    padding: 1rem;
}

.book .row form .btn{
    padding:1rem 4rem;
    
}




/* past appointment section ends */


.table-2{
    font-family:'poppins', sans-serif;
    border-collapse: collapse;
    width: 100%;
    font-size: 0.875rem;
    margin-top: 2rem;
    height: 100%;

}
.th{
    border:none;
    text-align: left;
    padding:0;
}
.table{
    margin-top: 2rem;
    /* margin-left: 39rem; */
    padding-bottom: 13rem;
    padding-top: 3rem;
}




.filter{
    margin-top: -2rem;
    margin-bottom: 5rem;
    margin-left: 12rem;
  }
.filter-1{
    margin-top: -2rem;
    margin-bottom: 5rem;
    margin-left: 25rem;
}
.wrapper{
    width: 95%;
margin-left: 5rem;
}

#search-container{
    margin: 1rem ;
    margin-left: -4.5rem;
}

#search-container input{
    background-color: transparent;
    width: 40%;
    border-bottom: 2px solid var(--green);
    padding: 1rem 0.3rem;
    font-size: 1.3rem;
}
#search-container input:focus{
    border-bottom-color: #0e6453;
}
#search-container button{
    padding: 1rem 2rem;
    margin-left: 1rem;
    background-color:var(--green);
    color: white;
    border-radius: 5px;
    margin-top: .5rem;
}
.wrapper-1{
    margin-top: 2rem;
    /* margin-left: 9rem; */
}
.button-value{
   
    border:2px solid var(--green);
    padding: 1rem 2.2rem;
    border-radius: 3rem;
    background-color: transparent;
    color: #0e6453;
    cursor: pointer;
    margin: .5rem;
}
.active{
    background-color: #0e6453;
    color: white;
}


 </style>
</head>
<body>
    
<!-- header section starts  -->
 <%
Doctor doctor = new Doctor();  
 %>



<section class="book" id="book">


    <div class="row">

        <div class="image">
            <img src="../../assets/img/Medical prescription.gif" alt="">
        </div>

        <form action="UserBookAppointment" method="post"> <!-- Use GET method to pass the doctorId as a query parameter -->
    <!-- Add a hidden input field to store the doctorId -->
    <input type="hidden" name="doctorId" value="${param.id }"/>
 <input type="hidden" name="userId" value="<%= session.getAttribute("userId") %>"/>
            <h3>Book Appointment</h3>
            <input type="date" placeholder="Appointment date" name = "appointmentDate"class="box" id="appointment-date">
            <input type="date" placeholder="Booking date"  name="bookingDate"class="box" id="booking-date">
                <input type="text" hidden  placeholder="Status"  name="status"class="box" id="status" value="pending">
                <button type="submit" class="box btn">Confirm Appointment</button>
            
        </form>
            <!-- <a href="./appointment booked page.html">Book Now</a> -->
           
        </form>
             <script src="./header.jsp"></script>
       

</body>
</html>