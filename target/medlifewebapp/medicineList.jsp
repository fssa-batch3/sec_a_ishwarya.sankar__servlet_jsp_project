<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@page import="com.fssa.medlife.model.Medicine"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap")
	;

body {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: "Open Sans", sans-serif;
}

.container {
	width: 100%;
	height: 80vh;
	justify-content: center;
	align-items: center;
	display: flex;
}

.card {
	width: 300px;
	height: 440px;
	border-radius: 5px;
	box-shadow: 0 4px 6px 0 rgba(0, 0, 0, 0.2);
}

.card>*:not(img) {
	padding: 5px 10px;
}

.card img {
	width: 100%;
	height: 180px;
}

.card-body {
	padding: 5px;
}

.row {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 5px;
}

.card-body p {
	color: #3d3d3d;
	margin-bottom: 20px;
	font-size: 14px;
}

.view-btn a {
	padding: 5px 15px;
	border: 1.5px solid #007bff;
	border-radius: 3px;
	text-decoration: none;
	color: #007bff;
}

.btn-group {
	display: flex;
}

.btn-group .btn a {
	padding: 5px 15px;
	background-color: #28a745;
	color: #fff;
	border-radius: 3px;
	margin-left: -2px;
}

.btn-group a {
	margin: 0 10px;
	text-decoration: none;
	color: #000;
}
</style>
<body>
	<%
	@SuppressWarnings("unchecked")
	List<Medicine> medicines = (List<Medicine>) request.getAttribute("medicine");
	%>
	<div class="container">
		
		<div class="card">
        <%
        for (Medicine medicine : medicines) {
		%>
<img src="<%=medicine.getMedicineUrl()%>" alt="" />
			<div class="card-body">
				<div class="row">

					<div class="card-title">
						<h4><%=medicine.getMedicineName()%></h4>
						<h3><%=medicine.getMedicineRupees()%></h3>
					</div>
					<div class="view-btn">
						<a href="">View Details</a>
					</div>
				</div>
				<hr />
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Animi, dignissimos.</p>
				<div class="btn-group">
					<div class="btn">
<a href="EditMedicineServlet?id=<%=medicine.getId()%>">Edit</a>
					</div>
					<a href="">Delete</a>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
</body>
</html>