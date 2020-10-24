package com.manda.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addbudgetallocation")
public class BudgetAllocationController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int projectname=Integer.parseInt(request.getParameter("projectname"));
		String budgetname=request.getParameter("budgetname");
		String budgetdate=request.getParameter("budgetdate");
		
	}

}
