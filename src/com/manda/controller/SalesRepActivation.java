package com.manda.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manda.dataAccess.SalesRepDataAccess;
import com.manda.dataAccess.UserDataAccess;


@WebServlet("/salesrepactivation")
public class SalesRepActivation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
        int salesRepID=Integer.parseInt(request.getParameter("salesRep_id")); 
        
        PrintWriter out = response.getWriter();
        
        try {
		        	
        	 if (action.equals("deactivate")) {
               int result = SalesRepDataAccess.deactivateSalesRep(salesRepID);
               if (result == 1) {
                   out.print("SalesRep id : has been deactivated");
               } else {
                   out.print("SalesRep : not has been activated");
               }
               response.sendRedirect("View/SalesRep/ViewSalesRep.jsp");

           }
           if (action.equals("activate")) {
               int result = SalesRepDataAccess.activateSalesRep(salesRepID);
               if (result == 1) {
                   out.print("SalesRep id : has been activated");
               } else {
                   out.print("SalesRep id :not has been deactivated");
               }
               response.sendRedirect("View/SalesRep/ViewSalesRep.jsp");
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
