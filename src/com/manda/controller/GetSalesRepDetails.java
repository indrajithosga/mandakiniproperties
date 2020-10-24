package com.manda.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manda.dataAccess.CustomerDataAccess;
import com.manda.dataAccess.SalesRepDataAccess;
import com.manda.entity.Customer;
import com.manda.entity.SalesRep;


@WebServlet("/getsalesrepdetails")
public class GetSalesRepDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter();
		   
	        try {
	           
	            String id=request.getParameter("salesRepVal");
	           
	            SalesRep salesRep=SalesRepDataAccess.getSalesRep(Integer.parseInt(id));
	            String repId=Integer.toString(salesRep.getRepId());
	            
	            
	            int status=salesRep.getRepStatus();
	            String salesRepStatus;
	            
	            if(status==1){
	            	
	            	salesRepStatus="Active";
	            	
	            }else {
	            	salesRepStatus="Deactive";
				}
	            
	           
	            out.print(repId.toString().concat(":")+""
	                        + ""+salesRep.getRepFirstName().toString().concat(":")+""
	                        + ""+salesRep.getRepLastName().toString().concat(":")+""
	                        + ""+salesRep.getRepNic().toString().concat(":")+""
	                        + ""+salesRep.getRepMobileNumber().toString().concat(":")+""
	                        + ""+salesRep.getRepEmail().toString().concat(":")+""
	                        + ""+salesRep.getRepAddress().toString().concat(":")+""
	                        + ""+salesRep.getRepRemark().toString().concat(":")+""
	                        + ""+salesRep.getRepCreatedDate().toString().concat(":")+""
	                        + ""+salesRepStatus.toString().concat("!"));

	        } catch (Exception ex) {
	            Logger.getLogger(GetUserDetails.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {            
	            out.close();
	        }
		
		
	}

}
