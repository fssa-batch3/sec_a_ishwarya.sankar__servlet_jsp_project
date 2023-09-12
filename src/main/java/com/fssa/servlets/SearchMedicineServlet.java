//package com.fssa.servlets;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.json.JSONArray;
//
//import com.fssa.medlife.exception.DAOException;
//import com.fssa.medlife.model.Medicine;
//
///**
// * Servlet implementation class SearchMedicineServlet
// */
//@WebServlet("/SearchMedicineServlet")
//public class SearchMedicineServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
// 
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		  List<Medicine> medicines = getAllMedicine();
//          String searchTerm = request.getParameter("searchTerm");
//
//       try {   // Filter medicines based on the search term
//          List<Medicine> filteredMedicines = new ArrayList<>();
//          for (Medicine medicine : medicines) {
//              if (medicine.getMedicineName().toLowerCase().contains(searchTerm.toLowerCase())) {
//                  filteredMedicines.add(medicine);
//              }
//          }
//
//          // Convert filtered medicines to JSON and send the response
//          JSONArray medicinesJSONArray = new JSONArray(filteredMedicines);
//          response.setContentType("application/json");
//          response.getWriter().print(medicinesJSONArray.toString());
//
//      } 
//	        catch (DAOException e) {
//          // Handle DAOException appropriately, e.g., log the error or send an error response
//          e.printStackTrace();
//         
//      }
//  
//
//  }
//  }
//  