package com.fssa.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.utils.ConnectionUtil;

/**
 * Servlet implementation class changeStatus
 */
@WebServlet("/changeStatus")
public class changeStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changeStatus() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String newStatus = request.getParameter("status");
        String sql = "UPDATE appointments SET Status = ? WHERE id = ?";
        try (Connection connection = ConnectionUtil.getConnection();
   	         PreparedStatement pmt = connection.prepareStatement(sql)) {           
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, newStatus);
            preparedStatement.setInt(2, id);
            int rowsAffected = preparedStatement.executeUpdate();
            
            if (rowsAffected > 0) {
                response.sendRedirect("DoctorAppointment.jsp");
            } else {
                response.getWriter().println("No appointment found with the specified ID.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error updating status: " + e.getMessage());
        }
    }
}
