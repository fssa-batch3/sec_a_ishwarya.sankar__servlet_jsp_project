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

        /* Style for status buttons */
        .status-buttons {
            display: flex;
            justify-content: center;
        }

        .status-button {
            padding: 5px 10px;
            margin: 5px;
            cursor: pointer;
        }

        .status-button.approved {
            background-color: #4CAF50;
            color: white;
        }

        .status-button.pending {
            background-color: #FFC107;
            color: white;
        }

        .status-button.cancelled {
            background-color: #F44336;
            color: white;
        }
    </style>
</head>
<body>
  <h1>Doctor Appointments</h1>
    <div class="table-container">
        <table>
            <thead>
                <tr>
                    <th>Appointment Date</th>
                    <th>Booking Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <c:forEach items="${appointment}" var="appointment">
    <tr>
        <td>${appointment.appointmentDate}</td>
        <td>${appointment.bookingDate}</td>
        <td>${appointment.status}</td>
        <td>
            <button onclick="markPending(${appointment.id})">Pending</button>
            <button onclick="deleteAppointment(${appointment.id})">Delete</button>
            <button onclick="doctorNotAvailable(${appointment.id})">Doctor Not Available</button>
        </td>
    </tr>
</c:forEach>
            
            <tbody id="appointment-table-body">
                <!-- Appointments will be dynamically inserted here -->
            </tbody>
        </table>
    </div>
</body>
</html>