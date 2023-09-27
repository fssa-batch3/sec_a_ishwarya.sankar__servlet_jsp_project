package com.fssa.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.medlife.model.Doctordetails;
import com.fssa.medlife.service.DetailsService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class DoctorspecificDetail
 */
@WebServlet("/DoctorspecificDetail")
public class DoctorspecificDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorspecificDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DetailsService detailservice = new DetailsService();
		HttpSession session = request.getSession(false);
		  try {
			  
			  
				int userId = (int) session.getAttribute("userId");

	            // Call the service to fetch doctor details by userId
	            List<Doctordetails> doctorDetailsList = detailservice.listDoctorDetailsByUserId(userId);

	            // Set the retrieved data as an attribute in the request
	            request.setAttribute("doctorDetailsList", doctorDetailsList);

	            // Forward the request to your JSP for rendering
	            request.getRequestDispatcher("docspecificdetail.jsp").forward(request, response);
	        } catch (NumberFormatException e) {
	            // Handle invalid userId parameter
	            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid userId parameter");
	        } catch (ServiceException e) {
	            // Handle service exceptions
	            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error fetching doctor details");
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
