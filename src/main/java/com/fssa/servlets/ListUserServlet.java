//package com.fssa.servlets;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.fssa.medlife.model.User;
//
///**
// * Servlet implementation class ListUserServlet
// */
//public class ListUserServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public ListUserServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	  
//		protected void doPost(HttpServletRequest  request, HttpServletResponse response) throws ServletException, IOException {
//			String email = request.getParameter("email");
//			String password = request.getParameter("password");
//			User user1 = new User( "abinaya14@gmail.com", "abinaya", "Password@123", "8072404562", "Doctor");
//			PrintWriter out = response.getWriter();
//			if(user1 == null || "".equals(user1)) {
//				out.println("Invalid Details");
//				response.sendRedirect("login.html");
//			}
//			
//			else {
//				
//				out.println("Email and password is valid");
////	     		response.sendRedirect("home.html");
//				RequestDispatcher dispatcher = request.getRequestDispatcher("header.jsp");
//				dispatcher.forward(request, response);
//			}
//			
//		}
//
//}
