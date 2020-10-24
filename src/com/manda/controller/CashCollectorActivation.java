package com.manda.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manda.dataAccess.CashCollectingDataAccess;
import com.manda.dataAccess.UserDataAccess;


@WebServlet("/cashcollectionactivation")
public class CashCollectorActivation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
        int cashcollectId=Integer.parseInt(request.getParameter("cashCollect_id")); 
        
        PrintWriter out = response.getWriter();
        
        try {
			
        	
        	 if (action.equals("deactivate")) {
               int result = CashCollectingDataAccess.deactivateCashCollecting(cashcollectId);
               if (result == 1) {
                   out.print("Cash Collector id : has been deactivated");
               } else {
                   out.print("Cash Collector : not has been activated");
               }
               response.sendRedirect("View/CashCollecting/ViewCashCollect.jsp");

           }
           if (action.equals("activate")) {
               int result = CashCollectingDataAccess.activateCashCollecting(cashcollectId);
               if (result == 1) {
                   out.print("Cash Collector id : has been activated");
               } else {
                   out.print("Cash Collector id :not has been deactivated");
               }
               response.sendRedirect("View/CashCollecting/ViewCashCollect.jsp");
           }
//           if (action.equals("delete")) {
//               System.out.println("ccccccccccccc L: "+cashcollectId);
//               UserDataAccess.deleteUser(cashcollectId);
//               int result = 0;
//               if (res_runner > 0) {
//                   result = 2;
//               }
//               response.sendRedirect("View/User/ViewUser.jsp?userResult=" + result);
//
//           }
        	
        	
        	
		} catch (Exception e) {
			
		}
	
	
	}

}
