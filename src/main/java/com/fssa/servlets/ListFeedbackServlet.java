package com.fssa.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.exception.DAOException;
import com.fssa.medlife.model.Feedback;
import com.fssa.medlife.service.FeedbackService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class ListFeedbackServlet
 */
@WebServlet("/ListFeedbackServlet")
public class ListFeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListFeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		  FeedbackService feedbackService = new FeedbackService();
	        try {
	            List<Feedback> feedbackList = feedbackService.getAllFeedback();
	            request.setAttribute("feedbackList", feedbackList);
	            request.getRequestDispatcher("ListFeedback.jsp").forward(request, response);
	        } catch (ServiceException e) {
	            e.printStackTrace();
	            response.sendRedirect("error.jsp");
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
