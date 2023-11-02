package com.fssa.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.dao.AppointmentDAO;
import com.fssa.medlife.model.Appointment;
import com.fssa.medlife.model.Doctor;
import com.fssa.medlife.model.User;

/**
 * Servlet implementation class UserBookAppointment
 */
@WebServlet("/UserBookAppointment")
public class UserBookAppointment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserBookAppointment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 try {
	            // Retrieve appointment details from the request parameters
			 
			 String userIdParam = request.getParameter("userId");
			 String doctorIdParam = request.getParameter("doctorId");

			 if (userIdParam != null && !userIdParam.isEmpty() && doctorIdParam != null && !doctorIdParam.isEmpty()) {
			     int userId = Integer.parseInt(userIdParam);
			     int id = Integer.parseInt(doctorIdParam);

			    System.out.println("sfsd"+userIdParam);
			    System.out.println(doctorIdParam);
			 } else {
					response.sendRedirect("/book.jsp");
			 }

	            int userId = Integer.parseInt(request.getParameter("userId"));
	            int id = Integer.parseInt(request.getParameter("doctorId"));
	            String appointmentDate = request.getParameter("appointmentDate");
	            String bookingDate = request.getParameter("bookingDate");
	            String status = request.getParameter("status");
	            System.out.println(userId);
	            System.out.println(id);


	             User user = new User();
	             user.setUserId(userId);
	             
	             Doctor doctor = new Doctor();
	             doctor.setId(id);
	             
	            // Create an Appointment object
	            Appointment appointment = new Appointment();
	     
	            appointment.setAppointmentDate((appointmentDate));
	            appointment.setBookingDate((bookingDate));
	            appointment.setStatus(status);
	            appointment.setUser(user);
	            appointment.setDoctor(doctor);
	            // Call the DAO method to create the appointment
	            boolean success = true;
	            AppointmentDAO appointmentDAO = new AppointmentDAO();
				try {
					success = appointmentDAO.createAppointment(appointment);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

	            if (success) {
	                // Redirect to a success page
	            	response.sendRedirect(request.getContextPath()+"/BookAppointmentServlet");
	            } else {
	                // Handle the case where insertion failed
	                // You can redirect to an error page or show an error message
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            // Handle exceptions here
	        }
	    }
}
