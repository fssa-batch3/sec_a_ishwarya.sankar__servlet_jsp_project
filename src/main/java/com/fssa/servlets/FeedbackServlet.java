package com.fssa.servlets;

import java.io.IOException;

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
 * Servlet implementation class FeedbackServlet
 */
@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String feedbackText = request.getParameter("feedbackText");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String userName = request.getParameter("userName");

        Feedback feedback = new Feedback(feedbackText, rating, userName);

        FeedbackService feedbackService = new FeedbackService();
        try {
            boolean isAdded = feedbackService.addFeedback(feedback);
            if (isAdded) {
                response.sendRedirect("thankyou.jsp"); // Redirect to a thank-you page
            } else {
                // Handle the case where feedback was not added successfully
                response.sendRedirect("error.jsp");
            }
        } catch (ServiceException e) {
            e.printStackTrace(); // Print the exception details to the console for debugging
            response.sendRedirect("error.jsp");
        }
    }

}
