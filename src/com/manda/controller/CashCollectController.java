package com.manda.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.manda.dataAccess.CashCollectingDataAccess;
import com.manda.dataAccess.ProjectDataAccess;
import com.manda.dataAccess.SalesRepDataAccess;
import com.manda.entity.CashCollecting;
import com.manda.entity.Projects;
import com.manda.entity.SalesRep;


@WebServlet("/addcashcollect")
public class CashCollectController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int pro_id=Integer.parseInt(request.getParameter("cashprojectname"));
		Projects projects=ProjectDataAccess.getProject(pro_id);
		
		String colectdate=request.getParameter("cashcolctdate");
		double amount=Double.parseDouble(request.getParameter("cashcoltamount"));
		
		int rep_id=Integer.parseInt(request.getParameter("cashcoltrep"));
		SalesRep salesRep=SalesRepDataAccess.getSalesRep(rep_id);
		
		String cashcoltremark=request.getParameter("cashcoltremark");
		String btnAdd=request.getParameter("add");
		
		if(btnAdd.equals("AddCashCollect")){
			
			CashCollecting cashCollecting=new CashCollecting();
			cashCollecting.setProjects(projects);
			cashCollecting.setCashCollectDate(colectdate);
			cashCollecting.setCashCollectAmount(amount);
			cashCollecting.setSalesRep(salesRep);
			cashCollecting.setCashCollectRemark(cashcoltremark);
			cashCollecting.setCashCollectCretingDate(new Timestamp(new Date().getTime()));
			cashCollecting.setCashCollectUpdateDate(new Timestamp(new Date().getTime()));
			cashCollecting.setCashCollectStatus(1);
			
			CashCollectingDataAccess.saveCashCollecting(cashCollecting);
			response.sendRedirect("View/CashCollecting/ViewCashCollect.jsp");
			
		}else if (btnAdd.equals("UpdateCashCollect")) {
			
			CashCollecting cashCollecting=new CashCollecting();
			cashCollecting.setProjects(projects);
			cashCollecting.setCashCollectDate(colectdate);
			cashCollecting.setCashCollectAmount(amount);
			cashCollecting.setSalesRep(salesRep);
			cashCollecting.setCashCollectRemark(cashcoltremark);
			cashCollecting.setCashCollectCretingDate(new Timestamp(new Date().getTime()));
			cashCollecting.setCashCollectUpdateDate(new Timestamp(new Date().getTime()));
			cashCollecting.setCashCollectStatus(1);
			
			CashCollectingDataAccess.saveCashCollecting(cashCollecting);
			response.sendRedirect("View/CashCollecting/ViewCashCollect.jsp");
			
			
		}
		
		
	
	}

}
