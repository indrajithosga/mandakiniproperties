package com.manda.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.manda.dataAccess.ProjectDataAccess;
import com.manda.dataAccess.ProjectsCategoryDataAccess;
import com.manda.dataAccess.SalesRepDataAccess;
import com.manda.entity.ProjectCategories;
import com.manda.entity.Projects;
import com.manda.entity.SalesRep;


@WebServlet("/addproject")
public class ProjectController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String proname=request.getParameter("proname");
		String prolocation=request.getParameter("prolocation");
		String proarea=request.getParameter("proarea");
		String prodate=request.getParameter("prodate");
		double costofpursha=Double.parseDouble(request.getParameter("costofpursha"));
		double totalpurches=Double.parseDouble(request.getParameter("totalpurches"));
		double totplot=Double.parseDouble(request.getParameter("totplot"));
		String proremark=request.getParameter("proremark");
		
		int projcatId=Integer.parseInt(request.getParameter("projcatname"));
		ProjectCategories projectCategories=ProjectsCategoryDataAccess.getProjectCategory(projcatId);
		
		int salerepId=Integer.parseInt(request.getParameter("projectsalname"));
		SalesRep salesRep=SalesRepDataAccess.getSalesRep(salerepId);
				
		String btnAdd=request.getParameter("add");
		
		HttpSession session=request.getSession();
		Projects projectsId=(Projects)session.getAttribute("Projects");
		
		if(btnAdd.equals("AddProject")){
			
			Projects projects=new Projects();
			
			projects.setProName(proname);
			projects.setProLocation(prolocation);
			projects.setProArea(proarea);
			projects.setProStartedDate(prodate);
			projects.setCostOfpurchase(costofpursha);
			projects.setTotalPurchases(totalpurches);
			projects.setTotalPlots(totplot);
			projects.setProRemark(proremark);
			projects.setProjectCategories(projectCategories);
			projects.setSalesRep(salesRep);
			
			projects.setProImage("");
			projects.setProStatus(1);
			projects.setProCreatedDate(new Timestamp(new Date().getTime()));
			projects.setProUpdatedDate(new Timestamp(new Date().getTime()));
			
			ProjectDataAccess.saveProjects(projects);
			response.sendRedirect("View/Projects/ViewProjects.jsp");
			
			
		}else if (btnAdd.equals("UpdateProject")) {
			
			Projects projects=new Projects();
			
			projects.setProId(projectsId.getProId());
			projects.setProName(proname);
			projects.setProLocation(prolocation);
			projects.setProArea(proarea);
			projects.setProStartedDate(prodate);
			projects.setCostOfpurchase(costofpursha);
			projects.setTotalPurchases(totalpurches);
			projects.setTotalPlots(totplot);
			projects.setProRemark(proremark);
			projects.setProjectCategories(projectCategories);
			projects.setSalesRep(salesRep);
			
			projects.setProImage("");
			projects.setProStatus(1);
			projects.setProCreatedDate(new Timestamp(new Date().getTime()));
			projects.setProUpdatedDate(new Timestamp(new Date().getTime()));
			
			ProjectDataAccess.updateProject(projects);
			response.sendRedirect("View/Projects/ViewProjects.jsp");
		}
	}

}
