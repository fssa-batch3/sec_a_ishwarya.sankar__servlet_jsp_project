//package com.fssa.servlets;
//
//import java.io.IOException;
//import java.util.ArrayList;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.fssa.medlife.model.Medicine;
//
//public class GetAllServletJSON extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//
//    public GetAllServletJSON() {
//        super();
//    }
//    
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        List<Medicine> medicineList = new ArrayList<Medicine>();
//        medicineList.add(new Medicine("Dolo", 50, "http://example.com"));
//        medicineList.add(new Medicine("Paracetamol", 30, "http://example.com"));
//        medicineList.add(new Medicine("Aspirin", 20, "http://example.com"));
//
//        request.setAttribute("medicine-list", medicineList);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("medicine-list.jsp");
//        dispatcher.forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        doGet(request, response);
//    }
//}
