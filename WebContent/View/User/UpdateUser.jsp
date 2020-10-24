<%@page import="com.manda.dataAccess.RoleDataAccess"%>
<%@page import="com.manda.dataAccess.UserDataAccess"%>
<%@page import="com.manda.entity.User"%>
<%@page import="com.manda.entity.Role"%>
<%@page import="java.util.List"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update User</title>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="../../dist/css/VikumTA.min.css">
        <link rel="stylesheet" href="../../dist/css/_all-skins.min.css">
        <link href="../../dist/css/Style.css" rel="stylesheet" type="text/css"/>

        <script src="../../dist/js/jquery-1.8.3.min.js"></script>
        <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <link href="../../dist/js/datePicker/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <script src="../../dist/js/datePicker/jquery-ui.js"></script>
        <link href="../../dist/css/Style.css" rel="stylesheet" type="text/css"/>


    </head>
    <body class="hold-transition skin-blue sidebar-mini" onload="load();">

	<%
	
	int userId=Integer.parseInt(request.getParameter("user_id"));
	User user=UserDataAccess.getUser(userId);
	
	List<Role> allRole=RoleDataAccess.getAllRole();
	
	session.setAttribute("User", user);
	
	
	
	%>

        <div class="wrapper">
            <div style="height: 50px" >
                <header class="main-header effect" >
                    <a href="../../index2.html" class="logo" > 
                        <span class="logo-mini"><b>M</b>PT</span>
                        <span class="logo-lg"><b>MANDAKINI</b> PROPERTIES </span>
                    </a>
                    <nav class="navbar navbar-static-top " role="navigation"  >
                        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button" >
                            <span class="glyphicon glyphicon-menu-hamburger"></span>
                        </a>


                    </nav>
                </header>
                <jsp:include page="../../WEB-INF/jspf/navbar.jspf"></jsp:include>
            </div>

            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        UPDATE USER
                        <small>View user</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">View users</li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <form action="../../adduser" method="post" >
                        <div class="row">



                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">Basic informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>First name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="fname" name="fname" value="<%=user.getUserFirstName() %>" placeholder="Enter first name">
                                                <span id="msgfname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Last name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="lname" value="<%=user.getUserLastName()%>" name="lname" placeholder="Enter last name">
                                                <span id="msglname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>NIC number:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="nic"  value="<%=user.getUserNic()%>" name="nic" placeholder="Enter NIC number">
                                                <span id="msgnic"  style="color: #ff0000"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Gender:</label>

                                                <div class="form-control" style="border: hidden">
                                                    <label class="radio-inline"><input 
                                                            checked="checked"
                                                             type="radio" id="male" name="gender" value="male"/>Male</label>
                                                    <label class="radio-inline"><input type="radio" id="female" name="gender" value="female"/>Female</label>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Date Of Birth:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="dob" name="dob" value="<%=user.getUserDob()%>" placeholder="YYYY/MM/DD">
                                                <!--<span id="msgusname"  style="color: #ff0000"></span>-->
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>USER NAME:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="usname" value="<%=user.getUserUname()%>" name="usname" placeholder="Enter User Name">
                                                <span id="msgusname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <!-- /.col (left) -->
                            <div class="col-md-6">
                                <div class="box box-warning">
                                    <div class="box-header">
                                        <h3 class="box-title">Contact informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Phone number:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="pnumber" value="<%=user.getUserPhoneNumber()%>" name="pnumber" placeholder="Enter phone number">
                                                <span id="msgpnumber"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>E mail:</label>
                                                <input type="email" class="form-control my-colorpicker1 required" id="email" value="<%=user.getUserEmail()%>" name="email" placeholder="Enter email">
                                                <span id="msgemail"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Address:</label>
                                                <textarea class="form-control required" rows="4" id="address" name="address" placeholder="Enter Address"><%=user.getUserAddress() %></textarea>
                                                <span id="msgaddress"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Role:</label>
                                                <select class="form-control" id="role" name="role">
                                                    <option value="<%=user.getRole().getRoleId() %>"><%=user.getRole().getRoleName()%></option>
                                                    
                                                    <%
                                                    	
                                                    	Role roleName=user.getRole();
                                                    	out.println(roleName.getRoleName());
                                                    	for(Role role:allRole){
                                                    		if(roleName.getRoleName()==role.getRoleName()){
                                                    			
                                                    			allRole.remove(role);
                                                    		}
                                                    		
                                                    	
                                                    
                                                    %>
                                                    
                                                    <option value="<%=role.getRoleId() %>"><%=role.getRoleName()%></option>

												<% 
												
                                                    	}
                                                    	
                                                %>
                                                    
                                                </select>

                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Joined Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="userjoindate" value="<%=user.getUserJoinedDate()%>" name="userjoindate" placeholder="YYYY/MM/DD">
                                                <span id="userjoindate"  style="color: #ff0000">
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>

                            </div>



                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="UpdateUser" name="add"/>
                            <input type="reset" class="btn btn-danger" />
                        </div>

                    </form>
                </section>
            </div>




        </div>

        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
    </body>
</html>
