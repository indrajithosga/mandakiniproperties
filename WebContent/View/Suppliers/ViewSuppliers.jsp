<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.manda.dataAccess.SupplierDataAccess"%>
<%@page import="java.util.List"%> 
<%@page import="com.manda.entity.Supplier"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            
            function alertfunction(supplier_id){
               
            	
                var supname, supremark, supstatus, supoffnumber, supmobnumber, supemail, supaddress;

                var request = createXMLHttpRequest();
                
                var url = "../../getsupplierdetails";
                request.open("GET", url + "?supplierVal=" + supplier_id, true);
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
                                
                                supname = columnTokens[0];
                                supremark = columnTokens[1];
                                supstatus = columnTokens[2];
                                supoffnumber = columnTokens[3];
                                supmobnumber = columnTokens[4];
                                supemail = columnTokens[5];
                                supaddress = columnTokens[6];
                                
                                
                                //CiviliansDetails.item.push({"Id": columnTokens[0], "FirstName": columnTokens[1], "LastName": columnTokens[2], "Nationality": columnTokens[3], "Mobile": columnTokens[4], "Ethnicity": columnTokens[5], "e_mail": columnTokens[6], "city": columnTokens[7], "Profession": columnTokens[9]});
                            }
                           
                            document.getElementById('suname').innerHTML = supname;
                            document.getElementById('suremark').innerHTML = supremark;
                            document.getElementById('sustatus').innerHTML = supstatus;
                            document.getElementById('suoffnumber').innerHTML = supoffnumber;
                            document.getElementById('sumobnumber').innerHTML = supmobnumber;
                            document.getElementById('suemail').innerHTML = supemail;
                            document.getElementById('suaddress').innerHTML = supaddress;
                            
                        }
                    }

                }
            }
            
            function supplierdelete(supplierId){
                
                document.getElementById('iddelete').value=supplierId;
            }
            
        </script>
    </head>
    <body class="hold-transition skin-blue sidebar-mini" >
    
   
<%

	List<Supplier> allSuppliers=SupplierDataAccess.getAllSupplier();


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
                        Supplier registration
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../Suppliers/AddSupplier.jsp">Add Suppliers</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="alert alert-box success " >record is successfully updated </div>
                    <div class="alert alert-box failure " >record is successfully Deleted </div>
                    <div class="box box-default">
                        <!--<div class="col-md-12" style="padding-top: 8px">-->



                        <table class="table table-striped">
                            <thead style="font-weight: bolder">
                                <tr>
                                    <td>No</td>
                                    <td>Supplier Name</td>
                                    <td>Office Number</td>
                                    <td>Mobile Number</td>
                                    <td>Supplier Email</td>
                                    <td>Action</td>
                                    

                                </tr>
                            </thead>

							<%
							
								for(Supplier supplier:allSuppliers){
									
								
							
							%>

                            <tr>
                                <td><%=supplier.getSupId()%></td>
                                <td><%=supplier.getSupName()%></td>
                                <td><%=supplier.getSupOfficenumber()%></td>
                                <td><%=supplier.getSupMobilenumber()%></td>
                                <td><%=supplier.getSupEmail()%></td>
                                
                                
                                
                                <td>
                                <button class="btn btn-default btn-sm">

                                        <a href="" onclick="alertfunction(<%=supplier.getSupId()%>);" data-toggle="modal" data-target="#myModal">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </a>

                                    </button>
                                    <button class="btn btn-warning btn-sm">
                                        <a href="UpdateSupplier.jsp?supplier_id=<%=supplier.getSupId()%>&action=update">
                                            <i class="glyphicon glyphicon-edit"></i>
                                        </a>
                                    </button>
                                     <button class="btn btn-danger btn-sm">
                                     <a href="" onclick="supplierdelete(<%=supplier.getSupId()%>)" data-toggle="modal" data-target="#deleteModal"><i class="glyphicon glyphicon-trash"></i>
                                     </a>
                                     </button>
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


        <!--<button type="button" class="btn btn-info btn-lg" >Open Modal</button>-->

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class=" modal-dialog " style="width:65%;margin-top: 100px;background-color: #f0f0f0;border-radius: 50px">

                <!-- Modal content-->

                <div class="modal-content" style="background-color: #ECF0F5">

                    <div class="modal-header" style="padding: 8px 8px 8px 20px">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 style="font-weight: bold" class="modal-title">Supplier Informations  <span style="font-size: 15px;color: #0000cc">&nbsp;&nbsp;&nbsp;&nbsp; </span><spam style="font-size: 13px;color: #0000cc" id="" ></spam></h4>
                    </div>
                    <div class="modal-body" style="margin: 0px 15px 0px 15px">
                        <div class="col-md-3" style="background-color: #ffffff;height: 395px;float: left;margin-left: -5px" >
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
                                <div class = "panel-heading" style="background-color: #03DAC6;border-radius: 0px;color: #ffffff;padding: 8px 8px 8px 8px">
                                    <h3 style="font-weight: bold" class = "panel-title">
                                        Generel Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span >Supplier Name :</span></td>
                                            <td><span id="suname"></span></td>
                                        </tr>
                                        
                                        
                                        <tr ><td style="width: 190px"><span>Supplier Status :</span></td>
                                            <td><span id="sustatus"></span></td>
                                        </tr>
                                        
                                    </table> 
                                </div>
                                <div class = "panel-heading" style="background-color: #03DAC6;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 style="font-weight: bold" class = "panel-title">
                                        Contact Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>Supplier Office Number :</span></td><td><span id="suoffnumber"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Supplier Mobile Number :</span></td><td><span id="sumobnumber"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Supplier Email :</span></td><td><span id="suemail"></span></td></tr>
                                        

                                    </table> 
                                </div>
                                <div class = "panel-heading" style="background-color: #03DAC6;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 style="font-weight: bold" class = "panel-title">
                                        Other Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                	
                                    <table >              
                                      
                                      	<tr><td style="width: 190px"><span>Supplier Remark :</span></td>
                                            <td><span id="suremark"></span></td>
                                        </tr>
                                        
                                        <tr><td style="width: 190px"><span>Supplier Address :</span></td><td>
                                        <span id="suaddress"></span></td></tr>	  

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
                            <h4 class="modal-title">Confirm a Supplier deletion</h4>
                        </div>
                        <form action="../../suppliersactivation?action=delete" method="POST">


                            <div class="modal-body">
                                <spam >This will delete this supplier <b>permanently</b></spam><br/>
                                <spam>Are you sure want to permanently delete the selected item ?</spam>
                                <!-- <spam>Please click the <b>Delete button</b> only ones, it will takes few moments for the <br/>deletion process to complete</spam>-->
                            </div>
                            <div class="modal-footer" style="height: 48px;padding: 7px 7px 7px 17px;">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                <input type="hidden" class="form-control" id="iddelete"  name="supplier_id" >
                                <input  type="submit" class="btn btn-danger" value="Delete Supplier" name="delete" />


                            </div>
                        </form>
                    </div>


                </div>
            </div>


        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
    </body>
</html>
