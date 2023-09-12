package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.model.User;
import com.fssa.medlife.service.UserService;
import com.fssa.medlife.service.exception.ServiceException;

@WebServlet("/RegisterServlet")


public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	PrintWriter out = response.getWriter();
    	//new instance of a class named UserService in Java
    	UserService userService = new UserService();

        String email = request.getParameter("email");
        String username = request.getParameter("name");
        String password = request.getParameter("password");
        String phoneNumber = request.getParameter("phone_number");
        String type = request.getParameter("type");

        User user = new User(email, username, password, phoneNumber, type);

        try {
        	//calling the method registerUser 
            userService.registerUser(user);
            response.sendRedirect("login.jsp");
        } catch (ServiceException e) {
//            response.getWriter().write("Error: " + e.getMessage());
            response.sendRedirect("register2.jsp?error="+e.getMessage()
       );
        }
    }

}
