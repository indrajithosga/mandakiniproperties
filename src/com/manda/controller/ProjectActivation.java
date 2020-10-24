package com.manda.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manda.dataAccess.ProjectDataAccess;
import com.manda.dataAccess.UserDataAccess;


@WebServlet("/projectactivation")
public class ProjectActivation extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		String action=request.getParameter("action");
        int projectId=Integer.parseInt(request.getParameter("project_id")); 
        
        PrintWriter out = response.getWriter();
        
        try {
			
        	
        	 if (action.equals("deactivate")) {
               int result = ProjectDataAccess.deactivateProject(projectId);
               if (result == 1) {
                   out.print("Projects id : has been deactivated");
               } else {
                   out.print("Projects id : not has been activated");
               }
               response.sendRedirect("View/Projects/ViewProjects.jsp");

           }
           if (action.equals("activate")) {
               int result = ProjectDataAccess.activateProject(projectId);
               if (result == 1) {
                   out.print("Projects id : has been activated");
               } else {
                   out.print("Projects id :not has been deactivated");
               }
               response.sendRedirect("View/Projects/ViewProjects.jsp");
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
