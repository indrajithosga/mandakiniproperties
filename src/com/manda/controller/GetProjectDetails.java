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
import com.manda.dataAccess.ProjectDataAccess;
import com.manda.entity.Customer;
import com.manda.entity.Projects;


@WebServlet("/getprojectdetails")
public class GetProjectDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter();
		   
	        try {
	           
	            String id=request.getParameter("projectVal");
	           
	            Projects projects=ProjectDataAccess.getProject(Integer.parseInt(id));
	            String proId=Integer.toString(projects.getProId());
	            String totalPurch=Double.toString(projects.getTotalPurchases());
	            String costPurch=Double.toString(projects.getCostOfpurchase());
	            String totalPlots=Double.toString(projects.getTotalPlots());
	     
	            int status=projects.getProStatus();
	            String proStatus;
	            
	            if(status==1){
	            	
	            	proStatus="Active";
	            	
	            }else {
	            	proStatus="Deactive";
				}
	          
	            out.print(proId.toString().concat(":")+""
	                        + ""+projects.getProjectCategories().getCatName().toString().concat(":")+""
	                        + ""+projects.getProName().toString().concat(":")+""
	                        + ""+projects.getProLocation().toString().concat(":")+""
	                        + ""+projects.getProArea().toString().concat(":")+""
	                        + ""+projects.getProStartedDate().toString().concat(":")+""
	                        + ""+totalPurch.toString().concat(":")+""
	                        + ""+costPurch.toString().concat(":")+""
	                        + ""+totalPlots.toString().concat(":")+""
	                        + ""+projects.getProImage().toString().concat(":")+""
	                        + ""+projects.getSalesRep().getRepFirstName().toString().concat(":")+""
	                        + ""+projects.getProRemark().toString().concat(":")+""+proStatus.toString().concat("!"));

	        } catch (Exception ex) {
	            Logger.getLogger(GetUserDetails.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {            
	            out.close();
	        }
		
		
		
		
	}

}
