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

import com.manda.dataAccess.SalesRepDataAccess;
import com.manda.entity.SalesRep;


@WebServlet("/addsalesrep")
public class SalesRepController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String salrpfname=request.getParameter("salrpfname");
		String salrplname=request.getParameter("salrplname");
		String salrpnic=request.getParameter("salrpnic");
		String salrpmnumber=request.getParameter("salrpmnumber");
		String salrpemail=request.getParameter("salrpemail");
		String salrpaddress=request.getParameter("salrpaddress");
		String salrpremark=request.getParameter("salrpremark");
		String salrpjoindate=request.getParameter("salrpjoindate");
		
		String btnAdd=request.getParameter("add");
		
		HttpSession session=request.getSession();
		SalesRep salesRepId=(SalesRep)session.getAttribute("SalesRep"); 		
		
		if(btnAdd.equals("AddSalesRep")){
			
			SalesRep salesRep=new SalesRep();
			
			salesRep.setRepFirstName(salrpfname);
			salesRep.setRepLastName(salrplname);
			salesRep.setRepNic(salrpnic);
			salesRep.setRepMobileNumber(salrpmnumber);
			salesRep.setRepEmail(salrpemail);
			salesRep.setRepAddress(salrpaddress);
			salesRep.setRepRemark(salrpremark);
			salesRep.setRepCreatedDate(salrpjoindate);
			
			salesRep.setRepStatus(1);
			salesRep.setRepUpdatedDate(new Timestamp(new Date().getTime()));
			
			SalesRepDataAccess.saveSalesRep(salesRep);
			response.sendRedirect("View/SalesRep/ViewSalesRep.jsp");
			
			
		}else if (btnAdd.equals("UpdateSalesRep")) {
			
			SalesRep salesRep=new SalesRep();
			
			salesRep.setRepId(salesRepId.getRepId());
			salesRep.setRepFirstName(salrpfname);
			salesRep.setRepLastName(salrplname);
			salesRep.setRepNic(salrpnic);
			salesRep.setRepMobileNumber(salrpmnumber);
			salesRep.setRepEmail(salrpemail);
			salesRep.setRepAddress(salrpaddress);
			salesRep.setRepRemark(salrpremark);
			salesRep.setRepCreatedDate(salrpjoindate);
			
			salesRep.setRepStatus(1);
			salesRep.setRepUpdatedDate(new Timestamp(new Date().getTime()));
			
			SalesRepDataAccess.updateSalesRep(salesRep);
			response.sendRedirect("View/SalesRep/ViewSalesRep.jsp");
		}
	}

}
