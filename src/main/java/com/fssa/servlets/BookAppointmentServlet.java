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
import com.fssa.medlife.service.AppointmentService;
import com.fssa.medlife.service.exception.ServiceException;


/**
 * Servlet implementation class BookAppointmentServlet
 */
@WebServlet("/BookAppointmentServlet")
public class BookAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;



	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		AppointmentService appointmentservice = new AppointmentService();
		HttpSession session = request.getSession();

		int userId = (Integer)session.getAttribute("userId");
		try {
			List<Appointment> appointment = appointmentservice.getAllUserAppointments(userId);
            System.out.println(appointment);
			request.setAttribute("appointment", appointment);
			request.getRequestDispatcher("appointment.jsp").forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred.");
		}
	}

}
