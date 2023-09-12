package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.medlife.model.User;
import com.fssa.medlife.service.UserService;
import com.fssa.medlife.service.exception.ServiceException;
import com.fssa.medlife.utils.ConnectionUtil;

/**
 * Servlet implementation class LoginServlet
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		User user1 = new User();
		user1.setEmail(email);
		user1.setPassword(password);
		User user = new User(email, password);

		try {

			UserService service = new UserService();

			service.loginUser(user, email);
//creating session 
			HttpSession session = request.getSession();
			
			session.setAttribute("loggedUser", email);

			response.sendRedirect("seller.jsp");

		} catch (ServiceException e) {

			response.sendRedirect("login2.jsp?errorMessage=" + e.getMessage());
		}

	}
	

}
