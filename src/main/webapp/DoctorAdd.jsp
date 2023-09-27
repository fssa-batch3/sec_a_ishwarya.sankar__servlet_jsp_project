<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ page import="com.fssa.medlife.model.* , java.util.List , com.fssa.medlife.service.* "%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Create Doctor</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-image: url('https://thumbs.dreamstime.com/b/medical-hospital-corridor-defocused-background-modern-l-laboratory-clinic-57470812.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            font-family: 'Poppins', sans-serif;
        }

        /* Reset default form styles */
        form {
            margin: 0 auto;
            max-width: 400px;
            padding: 20px;
            border-radius: 10px;
            border: 2px solid #0f0f0f;
            background-color: rgba(255, 255, 255, 0.8); /* Add a semi-transparent white background to the form */
        }

        /* Style form labels */
        form label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        /* Style form input fields */
        form input[type="text"],
        form input[type="url"],
        form input[type="time"],
        form input[type="number"],
        form textarea {
            width: 90%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        /* Style form input fields on focus */
        form input[type="text"]:focus,
        form input[type="url"]:focus,
        form input[type="time"]:focus,
        form input[type="number"]:focus,
        form textarea:focus {
            border-color: #007bff;
            outline: none;
        }

        /* Style the submit button */
        form button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        /* Style the submit button on hover */
        form button[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Add some spacing to the form */
        form br {
            display: none;
            content: "";
            margin: 10px 0;
        }

        /* Additional CSS styles for doctor cards */
        .doctor-card {
            border: 1px solid #ccc;
            padding: 10px;
            margin: 10px;
            width: 300px;
            float: left;
            box-sizing: border-box;
            background-color: #fff;
            height: 500px;
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
        }

        .h1 {
            position: relative;
            margin-left: 640px;
        }
    </style>
</head>
<body>


<h1 class="h1">Create Doctor</h1>

<form id="doctorForm" action="<%=request.getContextPath()%>/AddDoctorServlet" method="Post">
 
<%
List<Doctordetails> doctorDetailsList = (List<Doctordetails>) request.getAttribute("doctorDetailsList");
if (doctorDetailsList != null) {
    for (Doctordetails doctorDetails : doctorDetailsList) {
%>

    <label for="docname">Name:</label>
    <input type="text" id="docname" name="docname"  value="<%=doctorDetails.getUser().getUsername() %>" required><br><br>

    <label for="type">Specialist:</label>
    <input type="text" id="type" name="type" value="<%=doctorDetails.getSpecialist() %>" required><br><br>

    <label for="start-time">Start Time (8:00 AM - 6:00 PM):</label>
    <input type="time" id="start-time" name="start-time" required min="08:00" max="18:00"><br><br>

    <label for="end-time">End Time (Before 12:00 AM):</label>
    <input type="time" id="end-time" name="end-time" required max="23:59"><br><br>

    <label for="experience">Experience:</label>
    <input id="experience" name="experience"  value="<%=doctorDetails.getExperience()%>" type="text"  required/><br><br>

    <label for="image">Image URL:</label>
    <input type="url" id="image" name="image" value="<%=doctorDetails.getImage()%>" required><br><br>
    
    <%
    }
}
%>
    <button type="submit">Add Doctor</button>
       
    
</form>
<div id="doctorList">

</div>

<script>
    // Your JavaScript code here (as provided in your previous message)
</script>

</body>
</html>

    