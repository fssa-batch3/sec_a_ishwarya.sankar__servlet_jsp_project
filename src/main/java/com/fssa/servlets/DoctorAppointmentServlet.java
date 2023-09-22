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
		    String idParam = request.getParameter("id");
		    System.out.println(idParam);
		    int id = Integer.parseInt(idParam);
		    HttpSession session = request.getSession();
		    session.setAttribute("doctorid", id);
		    int doctorId = (Integer) session.getAttribute("doctorId");
		    System.out.println(doctorId);
		    try {

	            List<Appointment> appointments = service.getAllDoctorAppointments(doctorId);

	            request.setAttribute("appointments", appointments);
	            System.out.println(appointments);

	            request.getRequestDispatcher("DoctorAppointment.jsp").forward(request, response);

	        } catch (ServiceException e) {
	            e.printStackTrace();
	            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
	        }
		  
		}

	

}
