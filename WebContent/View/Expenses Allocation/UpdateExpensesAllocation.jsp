<%@page import="com.manda.dataAccess.UserDataAccess"%>
<%@page import="com.manda.dataAccess.ExpensesDataAccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%> 
<%@page import="com.manda.entity.Expenses"%>
<%@page import="com.manda.entity.Projects"%>
<%@page import="com.manda.entity.User"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE EXPENSES ALLOCATION</title>

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
    
    List<Expenses> allExpenses=ExpensesDataAccess.getAllExpenses();
    List<User> allUser=UserDataAccess.getAllUsers();
    
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
                        UPDATE EXPENSES ALLOCATION
                        <small>View Expenses Allocation</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">View Expenses Allocation</li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    
                    <form action="../../addexpensesallocation" method="post">
                    
                    <div class="row">

                        

                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">Expenses Allocation Details</h3>
                                    </div>
                                    <div class="box-body">
                                    
                                    
                                    <div class="form-group">
                                            <div class="form-group">
                                                <label>Projects Name:</label>
                                                 <select class="form-control" id="projectname" name="projectname"> 
                                                    <option value="">Please Select Projects</option> 
                                                    
                                                   
                                                  
                                                      <option value=""></option>
                                                    
                                                </select> 

                                            </div>
                                        </div>
                                    
                                    <div class="form-group">
                                            <div class="form-group">
                                                <label>Expenses Allocation Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="exallodate" name="exallodate" placeholder="YYYY/MM/DD">
                                                <span id="msgexallodate"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                    
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Expenses Name:</label>
                                                 <select class="form-control" id="exalloname" name="exalloname"> 
                                                    <option value="">Please Select Expenses</option> 
                                                    
                                                    <%
                                                    
                                                    for(Expenses expenses:allExpenses){
                                                    
                                                    %>
                                                   
                                                  
                                                      <option value="<%=expenses.getExpId()%>"><%=expenses.getExpName()%></option>
                                                      
                                                      
                                                    <%
                                                    }
                                                    %>  
                                                      
                                                      
                                                    
                                                </select> 

                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <div class="form-group">
                                                <label>Expenses Allocation Amount:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="exalloamount" name="exalloamount" placeholder="Enter Expenses Allocation Amount">
                                                <span id="msgexalloamount"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Expenses Allocation Remaining Balance:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="exallorebalance" name="exallorebalance" >
                                                <span id="msgexalloamount"  style="color: #ff0000"></span>
                                            </div>
                                        </div>          

										<div class="form-group">
                                            <div class="form-group">
                                                <label>Expenses Allocation Remark:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="exalloremark" name="exalloremark" placeholder="Enter Expenses Allocation Remark" >
                                                <span id="msgexalloremark"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                       
                                    </div>
                                </div>

                            </div>
                            
                            
                                 <!-- /.col (left) -->
                            <div class="col-md-6">
                                <div class="box box-warning">
                                    <div class="box-header">
                                        <h3 class="box-title">General Informations</h3>
                                    </div>
                                    <div class="box-body">
                                        
                                        
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Name:</label>
                                                 <select class="form-control" id="username" name="username"> 
                                                    <option value="">Please Select User</option> 
                                                    
                                                   <%
                                                   
                                                   	for(User user:allUser){
                                                   		
                                                   	
                                                   
                                                   %>
                                                  
                                                      <option value="<%=user.getUserId()%>"><%=user.getUserUname()%></option>
                                                      
                                                      <%
                                                      
                                                   	}
                                                      %>
                                                    
                                                </select> 

                                            </div>
                                        </div>
                                       
                                      
                                        
                                         
                                        
                                    </div>
                                </div>

                            </div>
                            
                        </div>
                            <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="AddExpensesAllocation" name="add"/>
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
