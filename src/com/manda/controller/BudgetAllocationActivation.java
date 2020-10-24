package com.manda.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manda.dataAccess.BudgetAllocationDataAccess;
import com.manda.dataAccess.UserDataAccess;


@WebServlet("/budgetallocationactivation")
public class BudgetAllocationActivation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String action=request.getParameter("action");
        int budgetId=Integer.parseInt(request.getParameter("budget_id")); 
        
        PrintWriter out = response.getWriter();
        
        try {
			
        	
        	 if (action.equals("deactivate")) {
               int result = BudgetAllocationDataAccess.deactivateBudgetAllocation(budgetId);
               if (result == 1) {
                   out.print("Budget id : has been deactivated");
               } else {
                   out.print("Budget id : not has been activated");
               }
               response.sendRedirect("View/Budgets/ViewBudget.jsp");

           }
           if (action.equals("activate")) {
               int result = BudgetAllocationDataAccess.activateBudgetAllocation(budgetId);
               if (result == 1) {
                   out.print("Budget id : has been activated");
               } else {
                   out.print("Budget id :not has been deactivated");
               }
               response.sendRedirect("View/Budgets/ViewBudget.jsp");
           }
//           if (action.equals("delete")) {
//               System.out.println("ccccccccccccc L: "+userId);
//               int res_runner = UserDataAccess.deleteUser(userId);
//               int result = 0;
//               if (res_runner > 0) {
//                   result = 2;
//               }
//               response.sendRedirect("View/User/ViewUser.jsp?userResult=" + result);
////
//
//           }
        	
        	
        	
		} catch (Exception e) {
			
		}
		
	}

}
