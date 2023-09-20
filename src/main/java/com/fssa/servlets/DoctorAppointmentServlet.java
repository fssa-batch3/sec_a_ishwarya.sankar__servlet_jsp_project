package com.fssa.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.medlife.model.Appointment;
import com.fssa.medlife.model.User;
import com.fssa.medlife.service.AppointmentService;
import com.fssa.medlife.service.UserService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class DoctorAppointmentServlet
 */
@WebServlet("/DoctorAppointmentServlet")
public class DoctorAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  AppointmentService service = new AppointmentService();
		    HttpSession session = request.getSession();

		    int doc_id = (Integer) session.getAttribute("id");
System.out.println(doc_id);
		    try {
		        List<Appointment> appointments = service.getAllDoctorAppointments(doc_id);
 UserService userservice = new UserService();
		        // Set the patient's username in each appointment object
		        for (Appointment appointment : appointments) {
		            User user = appointment.getUser();
		            if (user != null) {
		                int userId = user.getUserId();
		                System.out.println(userId);
		                // You need to implement a method to retrieve the username by user ID
		                String username = userservice.getUsernameByUserId(userId); // Implement this method
		                user.setUsername(username);
		                
		                System.out.println(username);

		            }
		        }

		        request.setAttribute("appointments", appointments);
		        System.out.println(appointments);

		        // Forward to the JSP page to display the appointments
		        request.getRequestDispatcher("doctor_appointments.jsp").forward(request, response);
		    } catch (ServiceException e) {
		        e.printStackTrace();
		        response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
		    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
