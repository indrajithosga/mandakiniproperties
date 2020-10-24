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

import com.manda.dataAccess.SupplierDataAccess;
import com.manda.dataAccess.UserDataAccess;
import com.manda.entity.Role;
import com.manda.entity.Supplier;
import com.manda.entity.User;


@WebServlet("/getsupplierdetails")
public class GetSupplierDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter();
		   
	        try {
	           
	            String id=request.getParameter("supplierVal");
	           
	            Supplier supplier=SupplierDataAccess.getSupplier(Integer.parseInt(id));
	            
	            
	            int status=supplier.getSupStatus();
	            String supplierStatus;
	            
	            if(status==1){
	            	
	            	supplierStatus="Active";
	            	
	            }else {
	            	supplierStatus="Deactive";
				}
	            
	           
	            out.print(supplier.getSupName().toString().concat(":")+""
	                        + ""+supplier.getSupRemark().toString().concat(":")+""
	                        + ""+supplierStatus.toString().concat(":")+""
	                        + ""+supplier.getSupOfficenumber().toString().concat(":")+""
	                        + ""+supplier.getSupMobilenumber().toString().concat(":")+""
	                        + ""+supplier.getSupEmail().toString().concat(":")+""
	                        + ""+supplier.getSupAddress().toString().concat("!"));

	        } catch (Exception ex) {
	            Logger.getLogger(GetUserDetails.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {            
	            out.close();
	        }
		
		
	}

}
