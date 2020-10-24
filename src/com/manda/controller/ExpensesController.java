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

import com.manda.dataAccess.ExpensesDataAccess;
import com.manda.entity.Expenses;


@WebServlet("/addexpenses")
public class ExpensesController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String exname=request.getParameter("exname");
		String exremark=request.getParameter("exremark");
		
		String btnAdd=request.getParameter("add");
		
		HttpSession session=request.getSession();
		Expenses expensesId=(Expenses)session.getAttribute("Expenses");
		
		if(btnAdd.equals("AddExpenses")){
			
			Expenses expenses=new Expenses();
			
			expenses.setExpName(exname);
			expenses.setExpRemark(exremark);
			expenses.setExpStatus(1);
			
			expenses.setExpCreatedDate(new Timestamp(new Date().getTime()));
			expenses.setExpUpdatedDate(new Timestamp(new Date().getTime()));
			
			ExpensesDataAccess.saveExpenses(expenses);
			response.sendRedirect("View/Expenses/ViewExpenses.jsp");
			
		}else if (btnAdd.equals("UpdateExpenses")) {
			
			Expenses expenses=new Expenses();
		
			expenses.setExpId(expensesId.getExpId());
			expenses.setExpName(exname);
			expenses.setExpRemark(exremark);
			expenses.setExpStatus(1);
			
			expenses.setExpCreatedDate(new Timestamp(new Date().getTime()));
			expenses.setExpUpdatedDate(new Timestamp(new Date().getTime()));
			
			ExpensesDataAccess.updateExpenses(expenses);
			response.sendRedirect("View/Expenses/ViewExpenses.jsp");
			
		}
	}

}
