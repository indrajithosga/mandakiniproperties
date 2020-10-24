<%@page import="com.manda.dataAccess.CustomerDataAccess"%>
<%@page import="com.manda.entity.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%> 
<%@page import="com.manda.entity.User"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customers</title>
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
        
        <script>
            function createXMLHttpRequest()
            {
                var xmlhttp;
                if (window.XMLHttpRequest)
                {
                    xmlhttp = new XMLHttpRequest();
                } else
                {
                    xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                return xmlhttp;
            }
            function alertfunction(customer_id){
               
                var cusfname, cuslname, cusnic, cusage, cusdob, cusstatus, cusemail, cuspnumber, cusaddres, cuscredate, cusremark;

                var request = createXMLHttpRequest();
                var url = "../../getcustomerdetails";
                request.open("GET", url + "?customerVal=" + customer_id, true);
                request.send();
                request.onreadystatechange = function () {
                    if (request.readyState == 4) {
                        if (request.status == 200) {
                            var data = request.responseText;
                            
                            var rowTokens = data.split("!");
                            var x;
                            var outputData;
                            for (x = 0; x < rowTokens.length - 1; x++) {
                                var columnTokens = rowTokens[x].split(":");
                                var y;
                                for (y = 0; y < columnTokens.length; y++) {
                                }
                                cusfname = columnTokens[0];
                                cuslname = columnTokens[1];
                                cusnic = columnTokens[2];
                                cusage = columnTokens[3];
                                cusdob = columnTokens[4];
                                cusstatus = columnTokens[5];
                                cusemail = columnTokens[6];
                                cuspnumber = columnTokens[7];
                                cusaddres = columnTokens[8];
                                cuscredate = columnTokens[9];
                                cusremark = columnTokens[10];
                              
                            }
                            
                            document.getElementById('cusfname').innerHTML = cusfname;
                            document.getElementById('cuslname').innerHTML = cuslname;
                            document.getElementById('cusnic').innerHTML = cusnic;
                            document.getElementById('cusage').innerHTML = cusage;
                            document.getElementById('cusdob').innerHTML = cusdob;
                            document.getElementById('cusstatus').innerHTML = cusstatus;
                            document.getElementById('cusemail').innerHTML = cusemail;
                            document.getElementById('cuspnumber').innerHTML = cuspnumber;
                            document.getElementById('cusaddres').innerHTML = cusaddres;
                            document.getElementById('cuscredate').innerHTML = cuscredate;
                            document.getElementById('cusremark').innerHTML = cusremark;
                            
                            
                        }
                    }

                }
            }
            function customerdelete(customerId){
                
                document.getElementById('iddelete').value=customerId;
            }
            
        </script>


    </head>
    <body class="hold-transition skin-blue sidebar-mini" onload="load();">

     <%
     
     List<Customer> allCustomers=CustomerDataAccess.getAllCustomer();
     
     %> 
        
        
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
                        Customers registration
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../Customers/AddCustomer.jsp">Add Customers</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="alert alert-box success " >record is successfully updated </div>
                    <div class="alert alert-box failure " >record is successfully Deleted </div>
                    <div class="box box-default">
                        <!--<div class="col-md-12" style="padding-top: 8px">-->


                            <thead style="font-weight: bolder">

                        <table class="table table-striped">
                            <thead style="font-weight: bolder">
                            <tr>
                                <td>No</td>
                                <td>Customer Name</td>
                                <td>Customer Email</td>
                                <td>Customer PhoneNumber</td>
                                <td>Date Of Birth</td>
                                <td>Action</td>
                            </tr>
                            </thead>
                          
                          
                          <%
                          
                          	for(Customer customer:allCustomers ){
                          %>
                          
                            <tr>
                                <td><%=customer.getCusId() %></td>
                                <td><%=customer.getCusFirstName()+" "+customer.getCusLastName()%></td>
                                <td><%=customer.getCusEmail() %></td>
                                <td><%=customer.getCusContactNumber()%></td>
                                <td><%=customer.getCusDob()%></td>
                                
                                    <td><button class="btn btn-default btn-sm">

                                        <a href="" onclick="alertfunction(<%=customer.getCusId()%>);" data-toggle="modal" data-target="#myModal">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </a>

                                    </button>
                                    <button class="btn btn-warning btn-sm">
                                        <a href="UpdateCustomer.jsp?customer_id=<%=customer.getCusId()%>&action=update">
                                            <i class="glyphicon glyphicon-edit"></i>
                                        </a>
                                    </button>
                                    <button class="btn btn-danger btn-sm"><a href="" onclick="customerdelete(<%=customer.getCusId()%>)" data-toggle="modal" data-target="#deleteModal"><i class="glyphicon glyphicon-trash"></i></a></button>
                                </td>


                            </tr>
                            
                            <%
                            
                          	}
                            %>


                        </table>

                        <!--</div>-->

                    </div>
                </section>
            </div>




        </div>
        
        
        
        <div class="modal fade" id="myModal" role="dialog">
            <div class=" modal-dialog " style="width:65%;margin-top: 100px;background-color: #f0f0f0;border-radius: 50px">

                <!-- Modal content-->

                <div class="modal-content" style="background-color: #ECF0F5">

                    <div class="modal-header" style="padding: 8px 8px 8px 20px">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Customer Informations  <span style="font-size: 15px;color: #0000cc">&nbsp;&nbsp;&nbsp;&nbsp; </span><spam style="font-size: 13px;color: #0000cc" id="" ></spam></h4>
                    </div>
                    <div class="modal-body" style="margin: 0px 15px 0px 15px">
                        <div class="col-md-3" style="background-color: #ffffff;height: 410px;float: left;margin-left: -5px" >
                            <div id="" style="margin-left: -15px"> </div>
                            <table>
                                <tr><td><h4 id="" style="float: left"></h4></td><td><h5 id="" ></h5></td></tr>
                                <tr><td><h5 style="font-weight: bold" id=""></h5></td></tr>
                            </table>
                            <div id=""></div>
                        </div>
                        <!-- /.col (left) -->
                        <div class="col-md-9"style="background-color: #ffffff;height: 395px;;float: right;margin-right: -5px;">

                            <div class="panel panel-default" style="margin-left: -15px;margin-right: -15px">
                                <div class = "panel-heading" style="background-color: #0080ff;border-radius: 0px;color: #ffffff;padding: 8px 8px 8px 8px">
                                    <h3 style="font-weight: bold" class = "panel-title">
                                        Generel Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>Customer First name :</span></td>
                                            <td><span id="cusfname"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Customer Last name :</span></td>
                                            <td><span id="cuslname"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Customer NIC :</span></td>
                                            <td><span id="cusnic"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Customer Age :</span></td>
                                            <td><span id="cusage"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Customer Date Of Birth :</span></td>
                                            <td><span id="cusdob"></span></td>
                                        </tr>
                                    </table> 
                                </div>
                                <div class = "panel-heading" style="background-color: #0080ff;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 style="font-weight: bold" class = "panel-title">
                                        Contact Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>Customer Email :</span></td><td><span id="cusemail"></span></td></tr>
                                        <tr><td style="width: 190px"><span> Customer Phone Number :</span></td><td><span id="cuspnumber"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Customer Address :</span></td><td><span id="cusaddres"></span></td></tr>

                                    </table> 
                                </div>
                                <div class = "panel-heading" style="background-color: #0080ff;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 style="font-weight: bold" class = "panel-title">
                                        Other Informations
                                    </h3>
                                </div>
                                
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>Customer Created Date :</span></td><td><span id="cuscredate"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Customer Status :</span></td><td><span id="cusstatus"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Customer Remark :</span></td><td><span id="cusremark"></span></td></tr>

                                    </table> 
                                </div>
                                
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div>...</div>
                    </div>
                </div>
            </div>
        </div>

        
         <!-- Modal -->
            <div class="modal fade" id="deleteModal" role="dialog" >
                <div class="modal-dialog" style="width: 500px">

                    <!-- Modal content-->

                    <div class="modal-content">

                        <div class="modal-header" style="height: 35px;padding: 7px 7px 7px 17px;">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <i class="glyphicon glyphicon-trash" style="float: left;padding-top: 5px;padding-right: 10px"></i>
                            <h4 class="modal-title">Confirm a Customer deletion</h4>
                        </div>
                        <form action="../../customeractivation?action=delete" method="POST">


                            <div class="modal-body">
                                <spam >This will Delete this Customer <b>permanently</b></spam><br/>
                                <spam>Are you sure want to permanently delete the selected item ?</spam>
                                <!-- <spam>Please click the <b>Delete button</b> only ones, it will takes few moments for the <br/>deletion process to complete</spam>-->
                            </div>
                            <div class="modal-footer" style="height: 48px;padding: 7px 7px 7px 17px;">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                <input type="hidden" class="form-control" id="iddelete"  name="customer_id" >
                                <input  type="submit" class="btn btn-danger" value="Delete Customer" name="delete" />


                            </div>
                        </form>
                    </div>


                </div>
            </div>
        
        
        
        

        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
    </body>
</html>
