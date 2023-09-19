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
import com.fssa.medlife.service.DoctorService;
import com.fssa.medlife.service.UserService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class DoctorAppointmentServlet
 */
@WebServlet("/DoctorAppointmentServlet")
public class DoctorAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DoctorService doctorservice = new DoctorService();

		HttpSession session = request.getSession();

		int id = (Integer) session.getAttribute("userId");
		try {
			List<Appointment> appointment = doctorservice.getAppointmentsForDoctor(id);

			request.setAttribute("appointment", appointment);
			System.out.println(appointment);
			request.getRequestDispatcher("DoctorAppointment.jsp").forward(request, response);
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
