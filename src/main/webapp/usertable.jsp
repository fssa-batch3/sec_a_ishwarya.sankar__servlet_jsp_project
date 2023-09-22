<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.fssa.medlife.model.*"%>
<%@ page import="com.fssa.medlife.dao.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>User Table</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
</head>
<body>
    <div class="container mt-4">
        <h1>User Table</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>User Type</th>
                </tr>
            </thead>
            <tbody>
                <!-- Replace the following rows with actual user data -->
                <% UserDAO userDao = new UserDAO();
                List<User> users = new ArrayList<>();
               users =  userDao.getAllUsers();
                
               for (User i : users){
                %>
                <tr>
                    <td><%= i.getUserId() %></td>
                 <td><%= i.getUsername() %></td>
                   <td><%= i.getEmail() %></td>
              <td><%= i.getPhonenumber() %></td>
                <td><%= i.getType() %></td>
                </tr>
                <%} %>
                
            </tbody>
        </table>
    </div>
</body>
</html>
    