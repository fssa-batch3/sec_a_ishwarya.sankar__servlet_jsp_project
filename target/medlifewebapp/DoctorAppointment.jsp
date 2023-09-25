<%@ page import="com.fssa.medlife.model.*"%>
<%@ page import="com.fssa.medlife.dao.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* Define styles for the entire page */
body {
    font-family: Arial, sans-serif;
    text-align: center;
    margin: 20px;
}

h1 {
    color: #333;
}

/* Style the appointment table */
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

/* Style the status buttons */
.status-button {
    padding: 5px 10px;
    border: none;
    cursor: pointer;
}

.status-pending {
    background-color: #ff9800;
    color: #fff;
}

.status-confirmed {
    background-color: #4caf50;
    color: #fff;
}

.status-not-available {
    background-color: #f44336;
    color: #fff;
}
</style>
</head>
<body>
<h1>Patient Appointments</h1>
<div class="table-container">
    <table class="table table-bordered">
        <thead class="thead-dark">
            <tr>
                <th>Patient Name</th>
                <th>Appointment Date</th>
                <th>Booking Date</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody id="appointment-table-body">
        <% HttpSession session2 = request.getSession(false);
        UserDAO user = new UserDAO();
        DoctorDAO doctor = new DoctorDAO();
        User userObj  = new User();
        Doctor doctorObj = new Doctor();
       userObj =  user.getUserByEmail((String)session2.getAttribute("loggedUser"));
       doctorObj =  doctor.getDoctorByEmail((String)session2.getAttribute("loggedUser"));
       AppointmentDAO appointmentDAO = new AppointmentDAO();
       List<Appointment> list = new ArrayList<>();
      list =  appointmentDAO.getAllDocAppointment(doctorObj.getUserId());
      for (Appointment i : list ){
    	  
    	String name  = user.getUsernameByUserId(i.getUser_id());
        %>
               <tr>
                    <td><%= name%></td>
                    <td><%= i.getAppointmentDate()%></td>
                    <td><%= i.getBookingDate()%></td>
                    <td>
                                <button class="status-button status-pending" > <a href="changeStatus?status=pending&id=<%=i.getId()%>">Pending</a> </button>
                           
                                <button class="status-button status-confirmed"><a href="changeStatus?status=confirmed&id=<%=i.getId()%>">Confirmed</a></button>
                           
                                <button class="status-button status-not-available">Doctor Not Available</button>
                          
                    </td>
                </tr>
                <%} %>
            
        </tbody>
    </table>
</div>
</body>
</html>
