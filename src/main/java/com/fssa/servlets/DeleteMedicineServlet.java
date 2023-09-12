package com.fssa.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.dao.MedicineDAO;
import com.fssa.medlife.exception.DAOException;
import com.fssa.medlife.model.Medicine;
import com.fssa.medlife.service.MedicineService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class DeleteMedicineServlet
 */
@WebServlet("/DeleteMedicineServlet")
public class DeleteMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteMedicineServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int medicineid = Integer.parseInt(request.getParameter("id"));
		MedicineService medicineservice = new MedicineService();
		try {
			medicineservice.deleteMedicine(medicineid);

			List<Medicine> list = new MedicineDAO().getAllMedicines();
			request.setAttribute("medicine", list);

			response.sendRedirect("medicineList.jsp");
		} catch (ServiceException | DAOException e) {
			String msg = e.getMessage();

		}
	}

}
