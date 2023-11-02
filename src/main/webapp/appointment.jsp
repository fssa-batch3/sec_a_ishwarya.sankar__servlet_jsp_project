<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        margin: 20px;
    }

    h1 {
        color: #44af4d;
    }

    .table-container {
        margin-top: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    table, th, td {
        border: 1px solid #44af4d;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    thead {
        background-color: #44af4d;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #44af4d;
    }

    tr:hover {
        background-color: #c9ffc9; /* Lighter green background color on hover */
    }
</style></head>
<body>
  <h1>My Appointments</h1>
    <div class="table-container">
<table class="table table-bordered">
    <thead class="thead-dark">
        <tr>
            <th>Doctor Name</th>
            <th>Specialist</th>
            <th>Appointment date</th>
            <th>Booking Date</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody id="appointment-table-body">
        <c:forEach items="${appointment}" var="appointmentItem">
            <tr>
                <td>${appointmentItem.doctor.doctorname}</td>
                <td>${appointmentItem.doctor.specialist}</td>
                <td>${appointmentItem.appointmentDate}</td>
                <td>${appointmentItem.bookingDate}</td>
                <td>${appointmentItem.status}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
     