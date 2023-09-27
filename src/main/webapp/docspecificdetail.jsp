<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.fssa.medlife.model.Doctordetails , java.util.List"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Doctor Details</title>
</head>
<body>
    <h1>Doctor Details</h1>
    <table border="1">
        <tr>
            <th>License</th>
            <th>Certification</th>
            <th>Qualification</th>
            <th>Specialist</th>
            <th>Experience</th>
            <th>Image</th>
        </tr>
        <%
            // Assuming you have a List of Doctordetails objects called 'doctorDetailsList' in your request or session
            List<Doctordetails> doctorDetailsList = (List<Doctordetails>) request.getAttribute("doctorDetailsList");
            
            if (doctorDetailsList != null && !doctorDetailsList.isEmpty()) {
                for (Doctordetails doctor : doctorDetailsList) {
        %>
        <tr>
            <td><%= doctor.getLicense() %></td>
            <td><img src="<%= doctor.getCertification() %>" alt="Doctor's Image" width="200" height="100"></td>
            <td><%= doctor.getQualification() %></td>
            <td><%= doctor.getSpecialist() %></td>
            <td><%= doctor.getExperience() %></td>
            <td><img src="<%= doctor.getImage() %>" alt="Doctor's Image" width="100" height="100"></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="6">No doctor details found.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
