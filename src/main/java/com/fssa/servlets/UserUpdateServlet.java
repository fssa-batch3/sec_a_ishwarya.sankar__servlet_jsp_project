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

/**
 * Servlet implementation class UserUpdateServlet
 */
@WebServlet("/UserUpdateServlet")
public class UserUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String phoneNumber = request.getParameter("phone_number");
		String type = request.getParameter("type");
		PrintWriter out = response.getWriter();
	
		out.println("Update User");

		UserService userService = new UserService();
		// check the userID , give valid details
		 User user1 = new User( email,userName,password,phoneNumber,type);
		try {
			userService.updateUser(user1, email);
			// out.println("Successfully Updated the user");
			 response.sendRedirect("profile.jsp");
		}catch (ServiceException e) {
	        	String msg = e.getMessage();
				String[] error = msg.split(":");
				response.sendRedirect("profile.jsp?error="+error[1]+"&email="+email);
				out.print(e.getMessage());
	        }
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}
	}


