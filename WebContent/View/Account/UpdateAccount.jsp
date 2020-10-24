<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE ACCOUNTS</title>

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
    
     

        
        <div class="wrapper">
            <div style="height: 50px" >
                <header class="main-header effect" >
                    <a href="../../index2.html" class="logo" > 
                        <span class="logo-mini"><b>A</b>LT</span>
                        <span class="logo-lg"><b>FMS</b> ACC </span>
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
                        UPDATE ACCOUNT
                        <small>View Account</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">View Account</li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    
                    <form action="../../addaccount" method="post">
                    
                    <div class="row">

                        

                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">Account Details</h3>
                                    </div>
                                    <div class="box-body">
                                        
                                                <label>Account Name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="acname" name="acname" value="" placeholder="Enter Account Name">
                                                <span id="acname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>        



                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Account Current Balance:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="acbalance" name="acbalance" value="" placeholder="Enter Account Current Balance">
                                                <span id="acbalance"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Account Category Name:</label>
                                                 <select class="form-control" id="accategory" name="accategory"> 
                                                    <option value=""></option> 
                                                    
                                                    
                                                    
                                                      


                                                    
                                                    <option value=""></option> 
                                                    
														
                                                    
                                                </select> 

                                            </div>
                                        </div>
                                        
                                    <div class="form-group">
                                            <div class="form-group">
                                                <label>Account Description:</label>
                                                <textarea class="form-control required" rows="4" id="acdescription"  value="" name="acdescription"  placeholder="Enter Account Current Balance"></textarea>
                                                <span id="msgaddress"  style="color: #ff0000"></span>
                                            </div>
                                        </div>    
                                        
                                               

                            </div>
                        </div>
                                    <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="UpdateAccount" name="add"/>
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
