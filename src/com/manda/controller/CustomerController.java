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

import com.manda.dataAccess.CustomerDataAccess;
import com.manda.entity.Customer;


@WebServlet("/addcustomer")
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cufname=request.getParameter("cufname");
		String culname=request.getParameter("culname");
		String cunic=request.getParameter("cunic");
		int cuage=Integer.parseInt(request.getParameter("cuage"));
		String cudob=request.getParameter("cudob");
		String cuemail=request.getParameter("cuemail");
		String cunumber=request.getParameter("cunumber");
		String address=request.getParameter("address");
		String cuscredate=request.getParameter("cuscredate");
		String curemark=request.getParameter("curemark");
		
		String btnAdd=request.getParameter("add");
		
		HttpSession session=request.getSession();
		Customer customerId=(Customer)session.getAttribute("Cus");
		
		if(btnAdd.equals("AddCustomer")){
			
			Customer customer=new Customer();
			customer.setCusFirstName(cufname);
			customer.setCusLastName(culname);
			customer.setCusNic(cunic);
			customer.setCusAge(cuage);
			customer.setCusDob(cudob);
			customer.setCusEmail(cuemail);
			customer.setCusContactNumber(cunumber);
			customer.setCusAddress(address);
			customer.setCusCreatedDate(cuscredate);
			customer.setCusRemark(curemark);
			customer.setCusStatus(1);
			customer.setCusUpdatedDate(new Timestamp(new Date().getTime()));
			
			CustomerDataAccess.saveCustomer(customer);
			response.sendRedirect("View/Customers/ViewCustomers.jsp");
			
			
		}else if (btnAdd.equals("UpdateCustomer")) {
			
			Customer customer=new Customer();
			
			customer.setCusId(customerId.getCusId());
			customer.setCusFirstName(cufname);
			customer.setCusLastName(culname);
			customer.setCusNic(cunic);
			customer.setCusAge(cuage);
			customer.setCusDob(cudob);
			customer.setCusEmail(cuemail);
			customer.setCusContactNumber(cunumber);
			customer.setCusAddress(address);
			customer.setCusCreatedDate(cuscredate);
			customer.setCusRemark(curemark);
			customer.setCusStatus(1);
			customer.setCusUpdatedDate(new Timestamp(new Date().getTime()));
			
			CustomerDataAccess.updateCustomer(customer);
			response.sendRedirect("View/Customers/ViewCustomers.jsp");
			
			
			
		}
	}

}
