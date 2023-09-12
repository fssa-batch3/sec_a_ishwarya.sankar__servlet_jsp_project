<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="com.fssa.medlife.service.exception.ServiceException"%>
<%@ page import="com.fssa.medlife.service.*"%>
<%@ page import="com.fssa.medlife.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>User Update</title>
</head>
<body>

	<div class="main-container">
		<div>
			<!-- update message -->
			<%
			String email = (String) request.getParameter("email");

			UserService user = new UserService();
			User userObj = new User();
			try {
				userObj = user.getUserByEmail(email);
			} catch (ServiceException e) {
				System.out.print(e.getMessage());
			}
			%>
			
	
			<form action="UserUpdateServlet?email=<%=email%>&userName=<%=userObj.getUsername()%>&password=<%=userObj.getPassword()%>&phone_number=<%=userObj.getPhonenumber()%>&type=<%=userObj.getType()%>" method="post" id="form2" class="onlyreg">
			

				<!-- error message pop up  -->
				<%
				String errorMessage = request.getParameter("error");
				if (errorMessage != null) {
				%>
				<div class="styledbutton">
					<%=errorMessage%>
				</div>
				<br /> <br />
				<%
				}
				%>
				
				<label>email :</label> <input type="email" name="email"
					placeholder="Enter email" value="<%=email%>" /> <br /> <br /> <label>User
					Name :</label><input name="name" placeholder="enter your name"
					value="<%=userObj.getUsername() %>" /> <br /> <br /> <label>password
					:</label> <input type="password" name="password"
					placeholder="Enter password" value="<%=userObj.getPassword()%>" />
				<br /> <br /> <label>Phone Number :</label> <input type="number"
					name="phoneNumber" placeholder="Enter Phone Number"
					value="<%=userObj.getPhonenumber()%>" /> <br /> <br /> <label>Type
					:</label> <input name="type" placeholder="Enter type"
					value="<%=userObj.getType()%>" /> <br /> <br />

				<div>
					<button class="signup" type="submit">Update</button>
				</div>
			</form>
		</div>

	</div>

</body>
</html>