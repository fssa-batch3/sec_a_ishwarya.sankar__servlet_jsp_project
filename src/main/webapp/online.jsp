<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.medlife.model.Doctor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./assests/style.css/online.css">

<style>
.doctor-row{
display:flex;
}
/* Add a specific class for doctor cards */
.doctor-card {
    border: 1px solid #ccc;
    border-radius: 20px;
    padding: 10px;
    margin: 10px;
    width: calc(33.33% - 20px); /* Three cards per row with some margin */
    box-sizing: border-box;
    background-color: #fff;
    height: 500px;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.doctor-card img {
    max-width: 100%;
    height: auto;
}

.doctor-info {
    padding: 10px;
}

.btn-book-appointment {
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
    text-align: center;
    margin-top: 10px;
}
</style>
</head>
<body>

<section class="first-fold">
    <div class="first">
    
        <div class="content">
            <h1>Skip the Travel!</h1>
            <h3>TAKE ONLINE DOCTOR CONSULTATION </h3>
        </div>
        <p class="description">
            Private consultation + audio call. Start at just "₹199"
        </p>
        <a class="primary-button" href="../pages/book.html">CONSULT NOW</a>
    </div>
    <div class="second">
        <img alt="med banner" class="imageweb" src="./assests/image/homepage-hero-image-web-v1.png" height="250px"
            width="auto">
    </div>
</section>

<section class="second">
    <div class="main2">
        <h1>OUR DOCTORS</h1>
        <div class="container">
            <%
            List<Doctor> doctors = (List<Doctor>) request.getAttribute("doctor");
            %>
            <div class="doctor-row">
            <%
            if (doctors != null) {
              int count = 0;
              // Iterate through each Doctor
              for (Doctor doctor : doctors) {
            %>
            <div class="doctor-card">
                <img src="<%= doctor.getImage() %>" alt="<%= doctor.getDoctorname() %>" />
                <div class="doctor-info">
                    <div class="card-title">
                        <h2><%= doctor.getDoctorname() %></h2>
                        <h2>Specialist: <%= doctor.getSpecialist() %></h2>
                    </div>
                    
                    <hr />
                    <h2>startTime: <%= doctor.getStartTime() %></h2>
                    <h2>Experience: <%= doctor.getEndtime() %></h2>
                </div>
                <button class="btn-book-appointment" onclick="bookAppointment('<%= doctor.getDoctorname() %>')">Book Appointment</button>
            </div>
            <%
                count++;
                // Close the row after every three cards
                if (count % 3 == 0) {
            %>
            </div>
            <div class="doctor-row">
            <%
                }
              }
            } else {
              out.println("No doctors available.");
            }
            %>
            </div> <!-- Close any remaining open row -->
        </div>
    </div>
</section>

<script>
    // Function to handle booking appointment
    function bookAppointment(doctorName) {
        alert("Booking appointment with " + doctorName);
        // You can add your appointment booking logic here
        // For example, redirect to a booking page or show a modal
    }
</script>
</body>
</html>
