<%@page import="com.manda.dataAccess.SalesRepDataAccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%> 
<%@page import="com.manda.entity.SalesRep"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE SALES REP</title>

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
    
    int saleRepId=Integer.parseInt(request.getParameter("salesrep_id"));
    SalesRep salesRep=SalesRepDataAccess.getSalesRep(saleRepId);
    
    session.setAttribute("SalesRep", salesRep);
    
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
                        UPDATE SALES REP
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../SalesRep/ViewSalesRep.jsp">Add SalesRep</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <form action="../../addsalesrep" method="post">
                        <div class="row">



                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">Basic informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep First Name:</label>

                                                <input type="text" class="form-control my-colorpicker1 required" id="salrpfname" name="salrpfname" value="<%=salesRep.getRepFirstName()%>" placeholder="Enter First name">
                                                <span id="msgsalrpfname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep Last Name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="salrplname" name="salrplname" value="<%=salesRep.getRepLastName()%>" placeholder="Enter Last name">
                                                <span id="salrplname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep NIC:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="salrpnic" name="salrpnic" value="<%=salesRep.getRepNic()%>"placeholder="Enter NIC number">
                                                <span id="msgsalrp"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep Contact Number:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="salrpmnumber" name="salrpmnumber" value="<%=salesRep.getRepMobileNumber()%>" placeholder="Enter NIC number">
                                                <span id="msgsalrpmnumber"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
				
										<div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep Email:</label>
                                                <input type="email" class="form-control my-colorpicker1 required" id="salrpemail" name="salrpemail" value="<%=salesRep.getRepEmail()%>"placeholder="Enter Email">
                                                <span id="msgsalrpemail"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep Joined Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="salrpjoindate" name="salrpjoindate" value="<%=salesRep.getRepCreatedDate()%>" placeholder="YYYY/MM/DD">
                                                <span id="msgsalrpjoindate"  style="color: #ff0000">
                                            </div>
                                        </div>

									
                                    </div>
                                </div>

                            </div>
                            <!-- /.col (left) -->
                            <div class="col-md-6">
                                <div class="box box-warning">
                                    <div class="box-header">
                                        <h3 class="box-title">General Information</h3>
                                    </div>
                                    
                                    <div class="box-body">
                                    
                                    <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep Address:</label>
                                                <textarea class="form-control required" rows="4" id="salrpaddress" name="salrpaddress" placeholder="Enter Address"><%=salesRep.getRepAddress()%></textarea>
                                                <span id="msgsalrpaddress"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
								
										<div class="form-group">
                                            <div class="form-group">
                                                <label>Remark:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="salrpremark" name="salrpremark" value="<%=salesRep.getRepRemark()%>" placeholder="Enter Remark">
                                                <span id="msgsalrpremark"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                       
                                </div>    
                                </div>    
                            </div>    
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="UpdateSalesRep" name="add"/>
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
