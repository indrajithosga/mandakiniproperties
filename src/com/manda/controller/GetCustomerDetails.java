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
import com.manda.dataAccess.SupplierDataAccess;
import com.manda.entity.Customer;
import com.manda.entity.Supplier;


@WebServlet("/getcustomerdetails")
public class GetCustomerDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter();
		   
	        try {
	           
	            String id=request.getParameter("customerVal");
	           
	            Customer customer=CustomerDataAccess.getCustomer(Integer.parseInt(id));
	            String age=Integer.toString(customer.getCusAge());
	            
	            
	            int status=customer.getCusStatus();
	            String customerStatus;
	            
	            if(status==1){
	            	
	            	customerStatus="Active";
	            	
	            }else {
	            	customerStatus="Deactive";
				}
	            
	           
	            out.print(customer.getCusFirstName().toString().concat(":")+""
	                        + ""+customer.getCusLastName().toString().concat(":")+""
	                        + ""+customer.getCusNic().toString().concat(":")+""
	                        + ""+age.toString().concat(":")+""
	                        + ""+customer.getCusDob().toString().concat(":")+""
	                        + ""+customerStatus.toString().concat(":")+""
	                        + ""+customer.getCusEmail().toString().concat(":")+""
	                        + ""+customer.getCusContactNumber().toString().concat(":")+""
	                        + ""+customer.getCusAddress().toString().concat(":")+""
	                        + ""+customer.getCusCreatedDate().toString().concat(":")+""+customer.getCusRemark().toString().concat("!"));

	        } catch (Exception ex) {
	            Logger.getLogger(GetUserDetails.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {            
	            out.close();
	        }
		
		
	}

}
