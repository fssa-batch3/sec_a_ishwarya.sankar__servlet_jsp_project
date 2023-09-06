//package com.fssa.servlets;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.fssa.medlife.model.Medicine;
//import com.fssa.medlife.service.MedicineService;
//import com.fssa.medlife.service.exception.ServiceException;
//
///**
// * Servlet implementation class UserEditServlet
// */
//@WebServlet("/UserEditServlet")
//public class UserEditServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public UserEditServlet() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		try {
//
//			int id = Integer.parseInt(request.getParameter("id"));
//			 medicine = new MedicineService().findMedicineById(id);
//			request.setAttribute("medicine", medicine);
//			RequestDispatcher req = request.getRequestDispatcher("medicineEdit.jsp?id=" + id);
//			req.forward(request, response);
//
//		} catch (NumberFormatException | ServiceException e) {
//			e.printStackTrace();
//			throw new ServletException(e.getMessage());
//		}
//	}
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
