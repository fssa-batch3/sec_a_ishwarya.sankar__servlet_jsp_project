<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.fssa.medlife.model.Feedback" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback List</title>
    <!-- Add your CSS styles if needed -->
</head>
<body>
<style>
        body {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px;
        }

        .card {
            flex: 0 0 calc(23.33% - 20px);
            margin-bottom: 20px;
            border: 1px solid #ddd;
            padding: 10px;
        }
    </style>
    <header>
        <h1>Feedback List</h1>
    </header>
    <div>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Feedback Text</th>
                    <th>User Name</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Feedback> feedbackList = (List<Feedback>) request.getAttribute("feedbackList");

                    if (feedbackList != null && !feedbackList.isEmpty()) {
                        for (Feedback feedback : feedbackList) {
                %>
                <tr>
                    <td><%= feedback.getFeedback_id() %></td>
                    <td><%= feedback.getFeedbackText() %></td>
                    <td><%= feedback.getUserName() %></td>
                    <td><%= feedback.getRating() %></td>
                </tr>
                <%
                        }
                    } else {
                %>
                <tr>
                    <td colspan="4">No feedback available.</td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
