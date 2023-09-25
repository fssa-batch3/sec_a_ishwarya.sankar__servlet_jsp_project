package com.fssa.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.medlife.dao.MedicineDAO;
import com.fssa.medlife.exception.DAOException;
import com.fssa.medlife.model.Medicine;
import com.fssa.medlife.service.MedicineService;
import com.fssa.medlife.service.exception.ServiceException;

/**
 * Servlet implementation class UpdateMedicineServlet
 */
public class UpdateMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMedicineServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		 MedicineDAO medicineDAO = new MedicineDAO();
	        try {
				Medicine medicine = medicineDAO.findMedicineById(id);
				request.setAttribute("medicine",medicine);
				RequestDispatcher dispatcher = request.getRequestDispatcher("MedicineUpdate.jsp");
				   dispatcher.forward(request, response);
						

			} catch (DAOException e) {
				e.printStackTrace();
			}		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String medicinename = request.getParameter("MedicineName");
		String medicineurl = request.getParameter("MedicineUrl");
		int price = Integer.parseInt(request.getParameter("MedicinePrice"));
		int id = Integer.parseInt(request.getParameter("id"));

		 MedicineService medicine = new  MedicineService();
		 Medicine newmedicine = new Medicine();
		 newmedicine.setMedicineName(medicinename);
		 newmedicine.setMedicineRupees(price);
		 newmedicine.setMedicineUrl(medicineurl);
		 try {
			medicine.updateMedicine(newmedicine, id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("medicineList.jsp");

		} catch (ServiceException e) {
			e.printStackTrace();
		}
		 
		doGet(request, response);
	}

}
