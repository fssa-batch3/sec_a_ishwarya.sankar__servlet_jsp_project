package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.model.Doctor;
import com.fssa.medlife.service.DoctorService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class ListDoctorServlet
 */
@WebServlet("/ListDoctorServlet")
public class ListDoctorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListDoctorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
PrintWriter out = response.getWriter();
		 

		try {
			DoctorService service = new DoctorService();
			List<Doctor> list = service.getAllDoctors();
			System.out.println(list);
			request.setAttribute("doctor", list);
			System.out.println(list);

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			e.printStackTrace();
		} finally {
			RequestDispatcher req = request.getRequestDispatcher("online.jsp");
			req.forward(request, response);
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
