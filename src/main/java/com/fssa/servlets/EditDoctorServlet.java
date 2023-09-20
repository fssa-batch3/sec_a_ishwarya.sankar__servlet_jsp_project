package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.model.Doctor;
import com.fssa.medlife.model.User;

/**
 * Servlet implementation class EditDoctorServlet
 */
@WebServlet("/EditDoctorServlet")
public class EditDoctorServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EditDoctorServlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String doc_id = request.getParameter("doctorId");
            int id = Integer.parseInt(doc_id);

            String doctorName = request.getParameter("docname");
            String specialist = request.getParameter("type");
            String startTime = request.getParameter("start-time");
            String endTime = request.getParameter("end-time");
            String experienceStr = request.getParameter("experience");
            String image = request.getParameter("image");
            String userIdStr = request.getParameter("userId");

            // Check if experienceStr and userIdStr are not null and not empty
            if (experienceStr != null && !experienceStr.isEmpty() &&
                userIdStr != null && !userIdStr.isEmpty()) {
                int experience = Integer.parseInt(experienceStr);
                int userId = Integer.parseInt(userIdStr);

                Doctor doctor = new Doctor(doctorName, specialist, startTime, endTime, experience, image, id, userId);

                // Rest of your code...
            } else {
            	 response.sendRedirect("error_page.jsp");
            }

            request.getRequestDispatcher("admin_doc.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            throw new ServletException(e.getMessage());
        }
    }
}