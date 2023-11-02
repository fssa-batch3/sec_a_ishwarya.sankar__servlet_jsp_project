package com.fssa.servlets;

import java.io.IOException;


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
    	//new instance of a class named UserService in Java
    	UserService userService = new UserService();

        String email = request.getParameter("reqemail");
        String username = request.getParameter("reqname");
        String password = request.getParameter("reqpass");
        String phoneNumber = request.getParameter("reqphone");
        String type = request.getParameter("type");

        User user = new User(email, username, password, phoneNumber, type);

        try {
        	//calling the method registerUser 
            userService.registerUser(user);
           System.out.println(user);
            response.sendRedirect("login.jsp");
        } catch (ServiceException e) {
//            response.getWriter().write("Error: " + e.getMessage());
            response.sendRedirect("register2.jsp?error="+e.getMessage()
       );
        }
    }

}
