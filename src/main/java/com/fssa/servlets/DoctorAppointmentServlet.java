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

		    // Retrieve the doctorId from the request parameter, assuming it's passed as "doctorId".
		    String doctorIdParam = request.getParameter("doctorId");

		    if (doctorIdParam != null && !doctorIdParam.isEmpty()) {
		        try {
		            int doctorId = Integer.parseInt(doctorIdParam);

		            List<Appointment> appointments = service.getAllDoctorAppointments(doctorId);

		            request.setAttribute("appointments", appointments);

		            // Forward to the JSP for rendering.
		            request.getRequestDispatcher("DoctorAppointment.jsp").forward(request, response);
		        } catch (NumberFormatException e) {
		            e.printStackTrace();
		            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid doctorId parameter.");
		        } catch (ServiceException e) {
		            e.printStackTrace();
		            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
		        }
		    } else {
		        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Missing doctorId parameter.");
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
