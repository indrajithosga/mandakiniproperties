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

import com.manda.dataAccess.UserDataAccess;
import com.manda.entity.Role;
import com.manda.entity.User;


@WebServlet("/getuserdetails")
public class GetUserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  PrintWriter out = response.getWriter();
		   
	        try {
	           
	            String id=request.getParameter("userVal");
	           
	            User user=UserDataAccess.getUser(Integer.parseInt(id));
	            Role role=user.getRole();
	            
	            int status=user.getUserStatus();
	            String userStatus;
	            
	            if(status==1){
	            	
	            	userStatus="Active";
	            	
	            }else {
	            	userStatus="Deactive";
				}
	            
	           
	            out.print(user.getUserFirstName().toString().concat(":")+""
	                        + ""+user.getUserLastName().toString().concat(":")+""
	                        + ""+user.getUserEmail().toString().concat(":")+""
	                        + ""+userStatus.toString().concat(":")+""
	                        + ""+user.getUserImage().toString().concat(":")+""
	                        + " "+user.getUserPhoneNumber().toString().concat(":")+""
	                        + " "+user.getUserGender().toString().concat(":")+""
	                        + " "+user.getUserDob().toString().concat(":")+ ""
	                        + " "+user.getUserNic().toString().concat(":")+ " "
	                        + ""+user.getUserAddress().toString().concat(":")+ ""+role.getRoleName().toString().concat(":")+ " "+user.getUserUname().toString().concat(":")+" "+user.getUserJoinedDate().toString().concat("!"));

	        } catch (Exception ex) {
	            Logger.getLogger(GetUserDetails.class.getName()).log(Level.SEVERE, null, ex);
	        } finally {            
	            out.close();
	        }
	}

}
