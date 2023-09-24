<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List of Doctor Details</title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
        }
        
        h1 {
            text-align: center;
            color: #333;
        }
        
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
            color: #333;
        }
        
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        
        tr:hover {
            background-color: #ddd;
        }
    </style>
<body>
    <h1>List of Doctor Details</h1>
    <table border="1">
        <tr>
            <th>License Number</th>
            <th>Certification</th>
            <th>Qualification</th>
            <th>Specialist</th>
            <th>Experience</th>
            <th>Image</th>
            <th>UserId</th>
        </tr>
        <c:forEach var="doctor" items="${doctorDetailsList}">
            <tr>
                <td>${doctor.license}</td>
                <td><img src="${doctor.certification}" alt="Doctor's Certification" width="100" height="100"></td>
                <td>${doctor.qualification}</td>
                <td>${doctor.specialist}</td>
                <td>${doctor.experience}</td>
                <td><img src="${doctor.image}" alt="Doctor's Image" width="100" height="100"></td>
                                <td>${doctor.userId}</td>
                
            </tr>
        </c:forEach>
    </table>
</body>
</html>
