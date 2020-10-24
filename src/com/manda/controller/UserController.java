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

import com.manda.dataAccess.RoleDataAccess;
import com.manda.dataAccess.UserDataAccess;
import com.manda.entity.Role;
import com.manda.entity.User;


@WebServlet("/adduser")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String nic=request.getParameter("nic");
		String gender=request.getParameter("gender");
		String usname=request.getParameter("usname");
		String dob=request.getParameter("dob");
		String pnumber=request.getParameter("pnumber");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		int roleId=Integer.parseInt(request.getParameter("role"));
		String userjoindate=request.getParameter("userjoindate");
		
		String btnAdd=request.getParameter("add");
		
		HttpSession session=request.getSession();
		User userId=(User)session.getAttribute("User");
		
		if(btnAdd.equals("AddUser")){
			
			User user=new User();
			user.setUserFirstName(fname);
			user.setUserLastName(lname);
			user.setUserNic(nic);
			user.setUserGender(gender);
			user.setUserGender(gender);
			user.setUserUname(usname);
			user.setUserDob(dob);
			user.setUserPhoneNumber(pnumber);
			user.setUserEmail(email);
			user.setUserAddress(address);
			user.setUserJoinedDate(userjoindate);
						
			Role role=RoleDataAccess.getRole(roleId);
			
			user.setRole(role);
			
			user.setUserImage("");
			user.setUserStatus(1);
			user.setUserUpdatedDate(new Timestamp(new Date().getTime()));
			
			UserDataAccess.saveUser(user);
			response.sendRedirect("View/User/ViewUser.jsp");
			
		}else if (btnAdd.equals("UpdateUser")) {
			
			User user=new User();
			user.setUserId(userId.getUserId());
			user.setUserFirstName(fname);
			user.setUserLastName(lname);
			user.setUserNic(nic);
			user.setUserGender(gender);
			user.setUserGender(gender);
			user.setUserUname(usname);
			user.setUserDob(dob);
			user.setUserPhoneNumber(pnumber);
			user.setUserEmail(email);
			user.setUserAddress(address);
			user.setUserJoinedDate(userjoindate);
						
			Role role=RoleDataAccess.getRole(roleId);
			
			user.setRole(role);
			
			user.setUserImage("");
			user.setUserStatus(1);
			user.setUserUpdatedDate(new Timestamp(new Date().getTime()));
			
			UserDataAccess.updateUser(user);
			response.sendRedirect("View/User/ViewUser.jsp");
			
		}
	}

}
