<%@page import="com.manda.dataAccess.ProjectDataAccess"%>
<%@page import="com.manda.dataAccess.SalesRepDataAccess"%>
<%@page import="com.manda.entity.SalesRep"%>
<%@page import="com.manda.dataAccess.ProjectsCategoryDataAccess"%>
<%@page import="com.manda.entity.Projects"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD CASH COLLECT</title>

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
 
 	List<Projects> allProjects=ProjectDataAccess.getAllProjects();
 	List<SalesRep> allSalesRep=SalesRepDataAccess.getAllSalesRep();
 
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
                        CASH COLLECTION
                        <small>View Cash Collect</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <form action="../../addcashcollect" method="post">
                        <div class="row">



                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">General Informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Projects Name:</label>
                                                 <select class="form-control" id="cashprojectname" name="cashprojectname"> 
                                                    <option value="">Please Select Projects</option> 
                                                    
                                                   <%
                                                   
                                                   		for(Projects projects:allProjects){
                                                   
                                                   %>
                                                  
                                                      <option value="<%=projects.getProId()%>"><%=projects.getProName()%></option>
                                                    
                                                    <%
                                                    
                                                   		}
                                                    
                                                    %>
                                                    
                                                </select> 

                                            </div>
                                        </div>
                                        
                                       <div class="form-group">
                                            <div class="form-group">
                                                <label>Date Of Cash Collect:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="cashprodate" name="cashprodate" placeholder="YYYY/MM/DD">
                                                <span id="msgprodate"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Collection Amount:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="cashprototplot" name="cashprototplot" placeholder="Enter Cash Collect Amount">
                                                <span id="msgprototplot"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                          <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep:</label>
                                                 <select class="form-control" id="cashprojectsalname" name="cashprojectsalname"> 
                                                    <option value="">Please Select SalesRep</option> 
                                                    
                                                   <%
                                                   
                                                   	for(SalesRep salesRep:allSalesRep){
                                                   
                                                   %>
                                                  
                                                      <option value="<%=salesRep.getRepId()%>"><%=salesRep.getRepFirstName()%></option>
                                                    
                                                    <%
                                                    
                                                   	}
                                                    
                                                    %>
                                                    
                                                </select> 

                                            </div>
                                        </div>
				
										<div class="form-group">
                                            <div class="form-group">
                                                <label>Target:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="salrpremark" name="salrpremark" >
                                                <span id="msgsalrpremark"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Remaining:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="salrpremark" name="salrpremark" >
                                                <span id="msgsalrpremark"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
				
										


                                    </div>
                                </div>

                            </div>
                            <!-- /.col (left) -->
                            <div class="col-md-6">
                            
                            
                            	<div class="box box-warning">
                                            <div class="box-header">
                                                <h3 class="box-title">Other Informations</h3>
                                            </div>
                                            
                                            <div class="box-body">
                                            <div class="form-group">
                                                <label>Remark:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="salrpremark" name="salrpremark" placeholder="Enter Remark">
                                                <span id="msgsalrpremark"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                            
                                            
                                        </div>
                            
                                
                                
                                
                                    
                            </div>    
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="UpdateCashCollect" name="add"/>
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
