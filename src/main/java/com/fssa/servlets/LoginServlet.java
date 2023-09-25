package com.fssa.servlets;

import java.io.IOException;



import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.medlife.model.User;
import com.fssa.medlife.model.Doctor;

import com.fssa.medlife.service.UserService;
import com.fssa.medlife.service.DoctorService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class LoginServlet
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

	

		try {

			UserService service = new UserService();
			Doctor doctor = new Doctor();

			User user = service.loginUser(password, email);
			String userType = user.getType();
//creating session 
			HttpSession session = request.getSession();
		
			session.setAttribute("id", doctor.getId());
			
			session.setAttribute("loggedUser", email);
			session.setAttribute("userId", user.getUserId());
			System.out.println(session.getAttribute("loggedUser"));
			
		    if (userType != null) {
		        if ("Doctor".equals(userType)) {
		            response.sendRedirect("doctorhome.jsp");
		        } else if ("Patient".equals(userType)) {
		            response.sendRedirect("index.jsp");
		        } else if ("Seller".equals(userType)) {
		            response.sendRedirect("seller.jsp");
		        } else {
		            response.sendRedirect("admin.jsp");
		        }
		    } else {
		        response.sendRedirect("login2.jsp?errorMessage=Please select a user type");
		    }

		} catch (ServiceException e) {
			response.sendRedirect("login2.jsp?errorMessage=" + e.getMessage());
		}

	}

}
