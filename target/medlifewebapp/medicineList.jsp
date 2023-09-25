<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.medlife.model.Medicine"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
  body {
    margin: 0;
  }
  
  /* Header Styles */
  .site-header {
    background-color: #508090;
    color: #fff;
    padding: 1em;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 0;
  }
  
  .site-identity h1 {
    font-size: 1.5em;
    margin: 0;
    margin-left: 600px;
  }
  
  .container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin: 20px;
  }
  
  .card {
    flex: 0 0 calc(23.33% - 20px); /* 33.33% width with some margin */
    margin-bottom: 20px;
    border: 1px solid #ddd;
    padding: 10px;
  }
  
  .card img {
    max-width: 100%;
    height: auto;
  }
  
  .card-title {
    margin-top: 10px;
  }
  
  .view-btn a {
    text-decoration: none;
    color: #508090;
    font-weight: bold;
  }
  
  .btn-group {
    display: flex;
    justify-content: space-between;
    margin-top: 10px;
  }
</style>
</head>
<body>
  <form action="SearchMedicineServlet" method="GET">
   
  </form>
  <header class="site-header">
    <div class="site-identity">
      <h1>OUR PRODUCTS</h1>
    </div>
    <%
    @SuppressWarnings("unchecked")
    // retrieve medicine attributes and store it in medicines
    List<Medicine> medicines = (List<Medicine>) request.getAttribute("medicine");
    %>
  </header>
  <div class="container">
    <%
    if (medicines != null) {
      // Iterate through each Medicine
      for (Medicine medicine : medicines) {
    %>
    <div class="card">
      <img src="<%=medicine.getMedicineUrl()%>" alt="" />
      <div class="card-body">
        <div class="card-title">
          <h4><%=medicine.getMedicineName()%></h4>
          <h3><%=medicine.getMedicineRupees()%></h3>
        </div>
        <div class="view-btn">
          <a href="">View Details</a>
        </div>
        <hr />
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, dignissimos.</p>
        <div class="btn-group">
          <div class="btn">
            <a class="edit-button" href="EditMedicineServlet?id=<%=medicine.getId()%>">Edit</a>
          </div>
          <a  class = "delete-button"href="DeleteMedicineServlet?id=<%=medicine.getId()%>">Delete</a>
        </div>
      </div>
    </div>
    <%
    }
    } else {
    out.println("Not");
    }
    %>
  </div>
</body>
</html>
