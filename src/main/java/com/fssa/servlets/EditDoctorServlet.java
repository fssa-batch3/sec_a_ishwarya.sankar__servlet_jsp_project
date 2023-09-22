package com.fssa.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.medlife.model.Doctor;
import com.fssa.medlife.model.Medicine;
import com.fssa.medlife.service.DoctorService;
import com.fssa.medlife.service.MedicineService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class EditdoctorServlet
 */
@WebServlet("/EditdoctorServlet")
public class EditdoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{// TODO Auto-generated method stub
		    int id = Integer.parseInt(request.getParameter("id"));
            DoctorService doctorService = new DoctorService();
            System.out.println(id);
            Doctor doctor = doctorService.findDoctorById(id);

            request.setAttribute("id", id);
            request.setAttribute("doctor", doctor);

            RequestDispatcher req = request.getRequestDispatcher("EditDoc.jsp?id=" + id);
            req.forward(request, response);
        } catch (ServiceException e) {
            e.printStackTrace();
            throw new ServletException(e.getMessage());
        }
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Doctor doctor = new Doctor();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("doctor_name");
		String specialist = request.getParameter("specialist");

		
		String start_Time = request.getParameter("start_Time");
		String End_Time = request.getParameter("End_Time");
		int Experience = Integer.parseInt(request.getParameter("Experience"));

		String image = request.getParameter("image");
		doctor.setDoctorname(name);
		doctor.setSpecialist(specialist);
		doctor.setStartTime(start_Time);
		doctor.setEndtime(End_Time);
		doctor.setExperience(Experience);
		doctor.setImage(image);

		System.out.println(doctor.toString());

		DoctorService service = new DoctorService();
		try {
			service.updateDoctor(doctor, id);
		
			response.sendRedirect("ListDoctorServlet");
		} catch (ServiceException e) {
			e.printStackTrace();
			

		}
	}

}
