package com.fssa.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.fssa.medlife.model.Medicine;

/**
 * Servlet implementation class GetAllAccounts
 */
@WebServlet("/GetAllAccountJSONServlet")
public class GetAllMedicineServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	//using array list	
//		List<Medicine> accounts = new ArrayList<Medicine> ();
//		
//		accounts.add(new Medicine("Dolo", 50, "http://example.com"));
//		accounts.add(new Medicine("Dolo", 50, "http://example.com"));
//		accounts.add(new Medicine("Dolo", 50, "http://example.com"));
//		JSONArray accountsJSonArray = new JSONArray(accounts);
//		PrintWriter out = response.getWriter();
//		out.println(accountsJSonArray.toString());
//		out.flush();
		
		// using object
		Medicine medicine = new Medicine("Dolo", 50, "http://example.com");
		
		JSONObject accountJson = new JSONObject(medicine);
		PrintWriter out = response.getWriter();
		out.println(accountJson.toString());
		out.flush();
	}
}
