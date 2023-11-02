<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%
 String myOrigin = request.getContextPath();
        String home = myOrigin + "/index.jsp";
        String login = myOrigin + "/login2.jsp";
        String service = myOrigin + "/service.jsp";
        String about = myOrigin + "/about.jsp";
        String review = myOrigin + "/review.jsp";
        String expert = myOrigin + "/ListDoctorServlet";
        String medicine = myOrigin + "/product.jsp";
        String profile = myOrigin + "/profile.jsp";
        String doctor = myOrigin + "/pages/doctoradding.html";
    %>

   

    <%
        if (session.getAttribute("loggedUser") != null) {
    %>
            <header class="main">
                <div class="fsec">
                    <h1>MED<span>LIFE</span></h1>
                </div>
                <div class="navbar">
                    <ul><li><a href="<%= about %>">About</a></li></ul>
                    <ul><li><a href="<%= service %>">Service</a></li></ul>
                    <ul><li><a href="<%= medicine %>">Medicines</a></li></ul>
                    <ul><li><a href="<%= expert %>">Expert</a></li></ul>
                    <ul><li><a href="<%= profile %>">Profile</a></li></ul>
                    <ul><li><a href="<%= request.getContextPath() %>/LogoutServlet" class="out">Logout</a></li></ul>
                </div>
            </header>
    <%
        }
        else{
        	
        
    %>
    
   <header class="main">
        <div class="fsec">
            <h1>MED<span>LIFE</span></h1>
        </div>
        <div class="navbar">
            <ul><li><a href="<%= about %>">About</a></li></ul>
            <ul><li><a href="<%= service %>">Service</a></li></ul>
            <ul><li><a href="<%= medicine %>">Medicine</a></li></ul>
            <ul><li><a href="<%= login %>">Login</a></li></ul>
        </div>
    </header>
    
    <%
        }
       
        	
        
    %>
