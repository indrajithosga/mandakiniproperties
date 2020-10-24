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

import com.manda.dataAccess.SupplierDataAccess;
import com.manda.entity.Supplier;


@WebServlet("/addsupplier")
public class SupplierController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String supname=request.getParameter("supname");
		String supofnumber=request.getParameter("supofnumber");
		String supmnumber=request.getParameter("supmnumber");
		String supemail=request.getParameter("supemail");
		String supadres=request.getParameter("supadres");
		String supremark=request.getParameter("supremark");
		String supcredate=request.getParameter("supcredate");
		
		String btnAdd=request.getParameter("add");
		
		HttpSession session=request.getSession();
		Supplier supplierId=(Supplier)session.getAttribute("Supplier");
		
		if(btnAdd.equals("AddSupplier")){
			
			Supplier supplier=new Supplier();
			supplier.setSupName(supname);
			supplier.setSupOfficenumber(supofnumber);
			supplier.setSupMobilenumber(supmnumber);
			supplier.setSupEmail(supemail);
			supplier.setSupAddress(supadres);
			supplier.setSupRemark(supremark);
			supplier.setSupCreatedDate(supcredate);
			
			supplier.setSupStatus(1);
			supplier.setSupUpdatedDate(new Timestamp(new Date().getTime()));
			
			SupplierDataAccess.saveSupplier(supplier);
			response.sendRedirect("View/Suppliers/ViewSuppliers.jsp");
			
			
		}else if (btnAdd.equals("UpdateSupplier")) {
			
			Supplier supplier=new Supplier();
			supplier.setSupId(supplierId.getSupId());
			supplier.setSupName(supname);
			supplier.setSupOfficenumber(supofnumber);
			supplier.setSupMobilenumber(supmnumber);
			supplier.setSupEmail(supemail);
			supplier.setSupAddress(supadres);
			supplier.setSupRemark(supremark);
			supplier.setSupCreatedDate(supcredate);
			
			supplier.setSupStatus(1);
			supplier.setSupUpdatedDate(new Timestamp(new Date().getTime()));
			
			SupplierDataAccess.updateSupplier(supplier);
			response.sendRedirect("View/Suppliers/ViewSuppliers.jsp");
		}
		
	}

}
