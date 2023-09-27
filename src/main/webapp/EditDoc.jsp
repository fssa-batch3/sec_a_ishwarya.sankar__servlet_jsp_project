<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.fssa.medlife.model.Doctor , java.util.List"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+AspN8qF3J2JwTh/DbI7AdwPw5l9x1Jz3zF5f5O93ms3zGjN" crossorigin="anonymous">
<style>
    body {
        background-image: url('your-background-image.jpg'); /* Replace 'your-background-image.jpg' with the path to your image */
        background-size: cover; /* Cover the entire viewport */
        background-repeat: no-repeat; /* No image repetition */
        background-attachment: fixed; /* Fixed background position */
    }

    .container {
        margin-top: 20px;
        background-color: rgba(255, 255, 255, 0.8); /* White background with some transparency */
        padding: 20px;
        border-radius: 10px; /* Add rounded corners to the container */
    }

    h1 {
        color: #333; /* Set the text color to dark gray */
    }
</style>
</head>
<body>
<div class="container">
    <h1>Edit Doctor</h1>
    
    <%
	Doctor doctors = (Doctor) request.getAttribute("doctor");
	%>
	
    <% 
    String doc_id = request.getParameter("id");
    int doctorid = Integer.parseInt(doc_id);
    %>
    
    <form id="editDoctorForm" action="EditDoctorServlet" method="post">
        <!-- Include hidden input field for doctor ID or name to identify the doctor to edit -->
        <input type="hidden" id="doctorId" name="doctorId" value="">
        
        <label for="docname">Name:</label>
        <input type="text" id="docname" name="docname" required value="${doctor.UserName}"><br><br>

        <label for="type">Specialist:</label>
        <input type="text" id="type" name="type" required value="${doctor.specialist }"><br><br>

        <label for="start-time">Start Time (8:00 AM - 6:00 PM):</label>
        <input type="time" id="start-time" name="start-time" required min="08:00" max="18:00" value="${doctor.startTime }"><br><br>

        <label for="end-time">End Time (Before 12:00 AM):</label>
        <input type="time" id="end-time" name="end-time" required max="23:59" value="${doctor.endtime }"><br><br>

        <label for="experience">Experience:</label>
        <input id="experience" name="experience" type="number" required value="${doctor.experience }"><br><br>

        <label for="image">Image URL:</label>
        <input type="url" id="image" name="image" required value="${doctor.image }"><br><br>

        <button type="submit">Update Doctor</button>
    </form>
</div>
</body>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-KyZXEAg3QhqLMpG8r+AspN8qF3J2JwTh/DbI7AdwPw5l9x1Jz3zF5f5O93ms3zGjN" crossorigin="anonymous"></script>

</html>
