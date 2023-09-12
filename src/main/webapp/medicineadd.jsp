<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Medicine Registration</title>

<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #F0F0F0;
    margin-top: 20px;
  }

  h1 {
    text-align: center;
    margin-top: 20px;
  }

  .card {
    max-width: 400px;
    margin: 0 auto;
    background-color: #FFFFFF;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  label {
    display: block;
    margin-bottom: 5px;
  }

  input[type="text"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }

  input[type="submit"] {
    background-color: #3498DB;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 3px;
    cursor: pointer;
  }

  .btn-group {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
  }
</style>
</head>
<body>
<h1>Medicine Registration</h1>
<div class="card">
  <form action="<%=request.getContextPath()%>/AddMedicineServlet" method="post">
    <label for="medicineName">Medicine Name:</label>
    <input type="text" id="medicineName" name="medicineName" required>
    <label for="medicinePrice">Price:</label>
    <input type="text" id="medicinePrice" name="medicinePrice" required>
    <label for="medicineUrl">Image URL:</label>
    <input type="text" id="medicineUrl" name="medicineUrl" required value="https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ebay.com%2Fitm%2F153528623633&psig=AOvVaw2Xj9fW8lP84GVoeARwSI1g&ust=1693987159500000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCLDIgvn_koEDFQAAAAAdAAAAABAP">
    <input type="submit" value="Add Medicine">
  </form>
</div>
<script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</script>
</body>
</html>
