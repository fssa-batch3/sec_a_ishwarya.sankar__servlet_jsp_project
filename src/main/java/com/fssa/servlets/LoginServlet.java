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

			HttpSession session = request.getSession();
			session.setAttribute("loggedUser", email);

			response.sendRedirect("seller.jsp");

		} catch (ServiceException e) {

			response.sendRedirect("login.jsp?errorMessage=" + e.getMessage());
		}

	}

//  public static User FindUserByIdEmail(String email) {
//			User user1 = null;
//			String query = "SELECT * FROM user WHERE email= ?";
//			try(Connection connection = ConnectionUtil.getConnection();
//					PreparedStatement statement = connection.prepareStatement(query)){
//            		statement.setString(1,email);
//			try(ResultSet resultset = statement.executeQuery()){
//			if(resultset.next()) {
//				int userid = resultset.getInt("userId");
//					 String Email = resultset.getString("email");
//				        String username = resultset.getString("userName");
//				        String password = resultset.getString("password");
//				        String phoneNumber = resultset.getString("phone_number");
//				        String type = resultset.getString("type");
//                        int deleted = resultset.getInt("isDeleted");
//				        user1 = new User(userid,Email,username,password,phoneNumber,type,deleted);
//				}
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//		return user1;
//	}
//		 
//		
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//	throws ServletException, IOException {
//		String email = request.getParameter("email");
//		String password = request.getParameter("password");
//		User user = new User(email, password);
//		HttpSession session = request.getSession();
//		PrintWriter out = response.getWriter();
//		User userObject = FindUserByIdEmail(email);
//		try {
//			if (UserService.loginUser(user, email) && !userObject.isDeleted()) {				// setting attributes in session
//				session.setAttribute("loggedUser", email);
//				
//				session.setAttribute("loggedInusername", userObject.getUsername());
//				session.setAttribute("loggedInUserID", userObject.getPassword());
//
//                session.setAttribute("loggedInmobileNumber", userObject.getPhonenumber());
//				session.setAttribute("loggedInUserID", userObject.getType());
//                session.setAttribute("loggedInemail", userObject.getEmail());
//				if(userObject.getIsdoctor()) {
//					response.sendRedirect("header.jsp");
//				} else {
//					response.sendRedirect("seller.jsp");
//				}
//			} else {
//				out.println("Invalid email or password");
//			}
//		} catch (ServiceException e) {
//			out.println(e.getMessage());
//		}

}
