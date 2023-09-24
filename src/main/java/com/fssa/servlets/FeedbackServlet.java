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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		   // Retrieve form data
        String feedbackText = request.getParameter("feedback");
        int rating = Integer.parseInt(request.getParameter("rating"));
        String userName = request.getParameter("userName"); // Make sure the input field name matches

        Feedback feedback = new Feedback(feedbackText, rating, userName);

        FeedbackService feedbackService = new FeedbackService();
        try {
            feedbackService.addFeedback(feedback);
            // Redirect to a thank you page or display a success message
            response.sendRedirect("thankyou.jsp");
        } catch (ServiceException e) {
            // Handle any errors
            e.printStackTrace();
            // Redirect to an error page or display an error message
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
