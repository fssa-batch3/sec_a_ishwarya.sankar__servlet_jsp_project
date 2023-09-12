package com.fssa.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.medlife.model.Medicine;
import com.fssa.medlife.service.MedicineService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class EditMedicineServlet
 */
@WebServlet("/EditMedicineServlet")
public class EditMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EditMedicineServlet() {
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

		try {
// parses an id parameter from the request URL
			int id = Integer.parseInt(request.getParameter("id"));
			HttpSession ses = request.getSession();
			ses.setAttribute("medicineid",id);
			Medicine medicine = new MedicineService().findMedicineById(id);
			request.setAttribute("id",id);
			request.setAttribute("medicine", medicine);
			RequestDispatcher req = request.getRequestDispatcher("medicineEdit.jsp?id=" + id);
			req.forward(request, response);

		} catch (NumberFormatException | ServiceException e) {
			e.printStackTrace();
			throw new ServletException(e.getMessage());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {		
		Medicine medicine = new Medicine();
		int id = Integer.parseInt(request.getParameter("medicineId"));
		String name = request.getParameter("medicineName");
		int price = Integer.parseInt(request.getParameter("medicinePrice"));
		String medurl = request.getParameter("medicineUrl");
		System.out.println(id + " " + name + " " + price + " " +medurl);
		medicine.setMedicineName(name);
		medicine.setMedicineRupees(price);
		medicine.setMedicineUrl(medurl);
		medicine.setId(id);
		System.out.println(medicine.toString());

		MedicineService service = new MedicineService();
		try {
			service.updateMedicine(medicine, id);
			//RequestDispatcher req = request.getRequestDispatcher("ListMedicineServlet");
			//req.forward(request, response);
			response.sendRedirect("ListMedicineServlet");
		} catch (ServiceException e) {
			e.printStackTrace();
			

		}
		

	}

}
