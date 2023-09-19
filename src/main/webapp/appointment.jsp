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
            color: #333;
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
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        thead {
            background-color: #333;
            color: #fff;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
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
     