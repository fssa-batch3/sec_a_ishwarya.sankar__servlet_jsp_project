package com.fssa.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.model.Doctordetails;
import com.fssa.medlife.service.DetailsService;

/**
 * Servlet implementation class AddDetailServlet
 */
@WebServlet("/AddDetailServlet")
public class AddDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 try {
	            // Retrieve form parameters
			 String certification = request.getParameter("certification");
			 String qualification = request.getParameter("qualification");
			 String specialist = request.getParameter("specialist");
			 int experience = Integer.parseInt(request.getParameter("experience"));
			 String image = request.getParameter("image");
			 int license = Integer.parseInt(request.getParameter("license"));
			 int userId = Integer.parseInt(request.getParameter("userId"));

	            // Create a Doctor object with the retrieved parameters
	            Doctordetails doctor = new Doctordetails(license, certification, qualification, specialist, experience,
	                    image, userId);

	            // Create a service instance and add doctor details
	            DetailsService detailsService = new DetailsService();
	            boolean added = detailsService.addDoctorDetails(doctor);

	            if (added) {
	                
	                response.sendRedirect("doctorhome.jsp");
	            } else {
	                response.sendRedirect("error.html");
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.sendRedirect("error.html");
	        }
	    }

}
