package com.fssa.servlets;

import java.io.IOException;


import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.model.Doctordetails;
import com.fssa.medlife.service.DetailsService;

/**
 * Servlet implementation class ListDetailServlet
 */
@WebServlet("/ListDetailServlet")
public class ListDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   try {
			     DetailsService detailsService = new DetailsService();

	            List<Doctordetails> doctorDetailsList = detailsService.listDoctorDetails();

	            request.setAttribute("doctorDetailsList", doctorDetailsList);

	            request.getRequestDispatcher("etaillist.jsp").forward(request, response);
	        } catch (Exception e) {
	            e.printStackTrace();
	            // Handle any exceptions or errors here
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
