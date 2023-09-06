package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.dao.MedicineDAO;
import com.fssa.medlife.exception.DAOException;
import com.fssa.medlife.model.Medicine;

/**
 * Servlet implementation class ListMedicineServlet
 */
@WebServlet("/ListMedicineServlet")
public class ListMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		MedicineDAO meds = new MedicineDAO();
		PrintWriter out = response.getWriter();

		List<Medicine> list = null;
		try {
			list = meds.getAllMedicines();
			request.setAttribute("medicine", list);

		} catch (DAOException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		} finally {
			RequestDispatcher req = request.getRequestDispatcher("medicineList.jsp");
			req.forward(request, response);
		}

	}

}
