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
 * Servlet implementation class EditMedicineServlet
 */
@WebServlet("/EditMedicineDetailsServlet")
public class EditMedicineDetailsServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditMedicineDetailsServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Medicine medicine = new Medicine();
		response.getWriter().print(request.getParameter("medicine"));
		
//		int id = Integer.parseInt(request.getParameter("medicineId"));
//		String name = request.getParameter("medicineName");
//		int price = Integer.parseInt(request.getParameter("MedicineRupees"));
//		String medurl = request.getParameter("medicineUrl");
//		System.out.println(id + " " + name + " " + price + " " +medurl);
//		medicine.setMedicineName(name);
//		medicine.setMedicineRupees(price);
//		medicine.setMedicineUrl(medurl);
//		medicine.setId(id);
//		System.out.println(medicine.toString());
//
//		MedicineService service = new MedicineService();
//		try {
//			service.updateMedicine(medicine, id);
//			RequestDispatcher req = request.getRequestDispatcher("ListMedicineServlet");
//			req.forward(request, response);
//
//		} catch (ServiceException e) {
//			e.printStackTrace();
//			
//
//		}

	}

}
