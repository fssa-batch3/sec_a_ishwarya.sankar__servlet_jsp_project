<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display All Medicine</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
        rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
        crossorigin="anonymous">
</head>
<body>
    <h1>Display All Medicine</h1>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>MedicineName</th>
                <th>MedicinePrice</th>
                <th>MedicineUrl</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="medicine" items="${medicine-list}" varStatus="loop">
                <tr>
                    <td><c:out value="${medicine.medicineName}" /></td>
                    <td><c:out value="${medicine.medicinePrice}" /></td>
                    <td><c:out value="${medicine.medicineUrl}" /></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
