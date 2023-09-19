package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.model.Doctor;
import com.fssa.medlife.service.DoctorService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class AddDoctorServlet
 */
@WebServlet("/AddDoctorServlet")
public class AddDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String doctorName = request.getParameter("docname");
		String specialist = request.getParameter("type");
		String startTime = request.getParameter("start-time");
		String EndTime = request.getParameter("end-time");
		int experienceStr = Integer.parseInt(request.getParameter("experience"));
		String image = request.getParameter("image");

		Doctor doctor = new Doctor();
		doctor.setDoctorname(doctorName);
		doctor.setSpecialist(specialist);
		doctor.setStartTime(startTime);
		doctor.setEndtime(EndTime);
		doctor.setExperience(experienceStr);
		doctor.setImage(image);
		try {
			DoctorService doctorService = new DoctorService();
			doctorService.addDoctor(doctor);
			System.out.println(doctor);
			response.sendRedirect("ListDoctorServlet");
		} catch (ServiceException e) {
			e.printStackTrace();
		}

	}

}
