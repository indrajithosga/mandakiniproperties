<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD SUPPLIER</title>

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
                        ADD SUPPLIER
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../Suppliers/ViewSuppliers.jsp">View Suppliers</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">

                    <form action="../../addsupplier" method="post">
                    
                    <div class="row">
                      

                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">Basic informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Supplier Name:</label>
  
                                                <input type="text" class="form-control my-colorpicker1 required" id="supname" name="supname" placeholder="Enter Supplier Name" required>
                                                <span id="msgsupname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                            <div class="form-group">
                                                <div class="form-group">
                                                    <label>Supplier Office Number:</label>
                                                    <input type="text" class="form-control my-colorpicker1 required" id="supofnumber" name="supofnumber" placeholder="Enter Office Number" required>
                                                    <span id="msgsupofnumber"  style="color: #ff0000"></span>
                                                </div>
                                            </div>

                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Supplier Mobile Number:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="supmnumber" name="supmnumber" placeholder="Enter Mobile Number" required>
                                                <span id="msgsupmnumber"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                                <div class="form-group">
                                                    <label>Supplier Email:</label>
                                                    <input type="text" class="form-control my-colorpicker1 required" id="supemail" name="supemail" placeholder="Enter Email" required>
                                                    <span id="msgsupemail"  style="color: #ff0000"></span>
                                                </div>
                                            </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Supplier Address:</label>
                                                <textarea class="form-control required" rows="4" id="supadres" name="supadres" placeholder="Enter Address" required></textarea>
                                                <span id="msgsupadres"  style="color: #ff0000"></span>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <!-- /.col (left) -->
                            <div class="col-md-6">
                                <div class="box box-warning">
                                    <div class="box-header">
                                        <h3 class="box-title">Other Information</h3>
                                    </div>
                                    <div class="box-body">
                                        
                                            
                                        
                                            <div class="form-group">
                                                <div class="form-group">
                                                    <label>Remark:</label>
                                                    <input type="text" class="form-control my-colorpicker1 required" id="supremark" name="supremark" placeholder="Enter Remark">
                                                    <span id="msgsupremark"  style="color: #ff0000"></span>
                                                </div>
                                            </div>
                                        
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Supplier Created Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="supcredate" name="supcredate" placeholder="YYYY/MM/DD" required>
                                                <span id="msgsupcredate"  style="color: #ff0000">
                                            </div>
                                        </div>
                                        
                                        
                                    </div>

                                </div>
                        
                               </div>
                            </div>
                                    <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="AddSupplier" name="add"/>
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
