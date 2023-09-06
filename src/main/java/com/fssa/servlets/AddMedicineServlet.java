package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.model.Medicine;
import com.fssa.medlife.service.MedicineService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class AddMedicineServlet
 */
@WebServlet("/AddMedicineServlet")
public class AddMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		MedicineService medicineservice = new MedicineService();
		String Medicinename = request.getParameter("medicineName");
		String Medicineprice = request.getParameter("medicinePrice");
		int price = Integer.parseInt(Medicineprice);
		String MedicineUrl = request.getParameter("medicineUrl");

		Medicine medicine = new Medicine();
		medicine.setMedicineName(Medicinename);
		medicine.setMedicineRupees(price);
		medicine.setMedicineUrl(MedicineUrl);
		try {
			MedicineService.addMedicine(medicine);
			//RequestDispatcher patcher = request.getRequestDispatcher("seller.jsp?errorMessage=");
			//patcher.forward(request, response);
			response.sendRedirect("ListMedicineServlet");
		} catch (ServiceException e) {
			e.printStackTrace();
		}
			
		}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}
