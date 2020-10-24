<%@page import="com.manda.dataAccess.CustomerDataAccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.manda.entity.Customer"%>
<%@page import="java.util.List"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE CUSTOMER</title>

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
 
 	int cusId=Integer.parseInt(request.getParameter("customer_id"));
 	
 	Customer customer=CustomerDataAccess.getCustomer(cusId);
 	session.setAttribute("Cus", customer);
 
 
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
                        UPDATE CUSTOMER
                        <small>View Customers</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">View Customers</li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    
                        <form action="../../addcustomer" method="post">
                            
                            <div class="row">

                            <div class="col-md-6">
                                
                                <div class="box box-primary">
                                    
                                    <div class="box-header">
                                        <h3 class="box-title">Basic Informartions</h3>
                                    </div>
                                    
                                    <div class="box-body">
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>First name:</label>

                                                <input type="text" class="form-control my-colorpicker1 required" id="cufname" name="cufname" value="<%=customer.getCusFirstName() %>" placeholder="Enter first name">
                                                <span id="msgcufname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Last name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="culname" name="culname" value="<%=customer.getCusLastName()%>" placeholder="Enter last name">
                                                <span id="msgculname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Customer NIC:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="cunic" name="cunic" value="<%=customer.getCusNic()%>" placeholder="Enter NIC Number">
                                                <span id="msgcunic"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Customer AGE:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="cuage" name="cuage" value="<%=customer.getCusAge()%>" placeholder="Enter Customer Age">
                                                <span id="cuage"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Date Of Birth:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="cudob" name="cudob" value="<%=customer.getCusDob()%>" placeholder="YYYY/MM/DD">
                                                <span id="msgcudob"  style="color: #ff0000">
                                            </div>
                                        </div>
                                        
                                   </div>
                                </div>

                            </div>
                            <!-- /.col (left) -->
                            <div class="col-md-6">
                                <div class="box box-warning">
                                    <div class="box-header">
                                        <h3 class="box-title">Contact Informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>E mail:</label>
                                                <input type="email" class="form-control my-colorpicker1 required" id="cuemail" name="cuemail" value="<%=customer.getCusEmail()%>" placeholder="Enter email">
                                                <span id="msgcuemail"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Phone number:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="cunumber" name="cunumber" value="<%=customer.getCusContactNumber()%>" placeholder="Enter phone number">
                                                <span id="msgcunumber"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Address:</label>
                                                <textarea class="form-control required" rows="4" id="address" name="address" placeholder="Enter Address"><%=customer.getCusAddress()%></textarea>
                                                <span id="msgaddress"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Customer Created Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="cuscredate" name="cuscredate" value="<%=customer.getCusCreatedDate()%>" placeholder="YYYY/MM/DD">
                                                <span id="msgcuscredate"  style="color: #ff0000">
                                            </div>
                                        </div>
                                        
                                       
                                          <div class="form-group">
                                            <div class="form-group">
                                                <label>Remark:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="curemark" name="curemark" value="<%=customer.getCusRemark()%>" placeholder="Enter Remark">
                                                <span id="msgcunumber"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        
                                    </div>

                                </div>
                                 
                              </div>
                            
                            
                            </div>
                            
                                <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="UpdateCustomer" name="add"/>
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
