<%@page import="com.manda.dataAccess.SalesRepDataAccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%> 
<%@page import="com.manda.entity.SalesRep"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW SALES REP</title>
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
        function alertfunction(salesrep_id){
           
        	 var id, salrpfname, salrplname, salrpnic, salrpmnumber, salrpemail, salrpaddress, salrpremark, salrpjoindate, salrpstatus;

            var request = createXMLHttpRequest();
            var url = "../../getsalesrepdetails";
            request.open("GET", url + "?salesRepVal=" + salesrep_id, true);
            request.send();
            request.onreadystatechange = function () {
                if (request.readyState == 4) {
                    if (request.status == 200) {
                        var data = request.responseText;

                        var rowTokens = data.split("!");
                        var x;
                        var outputData;
                       
                        for (x = 0; x < rowTokens.length - 1; x++) {
//                                 alert(data);
                            var columnTokens = rowTokens[x].split(":");
                            var y;
//                            for (y = 0; y < columnTokens.length; y++) {
//                            }
                            id = columnTokens[0];
                            salrpfname = columnTokens[1];
                            salrplname = columnTokens[2];
                            salrpnic = columnTokens[3];
                            salrpmnumber = columnTokens[4];
                            salrpemail = columnTokens[5];
                            salrpaddress = columnTokens[6];
                            salrpremark = columnTokens[7];
                            salrpjoindate = columnTokens[8];
                            salrpstatus = columnTokens[9];
                           
                            //CiviliansDetails.item.push({"Id": columnTokens[0], "FirstName": columnTokens[1], "LastName": columnTokens[2], "Nationality": columnTokens[3], "Mobile": columnTokens[4], "Ethnicity": columnTokens[5], "e_mail": columnTokens[6], "city": columnTokens[7], "Profession": columnTokens[9]});
                        }
                        
                        document.getElementById('id').innerHTML = id;
                        document.getElementById('rpfname').innerHTML = salrpfname;
                        document.getElementById('rplname').innerHTML = salrplname;
                        document.getElementById('rpnic').innerHTML = salrpnic;
                        document.getElementById('rpmnumber').innerHTML = salrpmnumber;
                        document.getElementById('rpemail').innerHTML = salrpemail;
                        document.getElementById('rpaddress').innerHTML = salrpaddress;
                        document.getElementById('rpremark').innerHTML = salrpremark;
                        document.getElementById('rpjoindate').innerHTML = salrpjoindate;
                        document.getElementById('rpstatus').innerHTML = salrpstatus;
                        
                    }
                }

            }
        }
        
            function salesrepdelete(salesrepId){
                
                document.getElementById('iddelete').value=salesrepId;
            }
            
        </script>


    </head>
    <body class="hold-transition skin-blue sidebar-mini" onload="load();">
    
    <%
    
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
                         
                    </h1>
                    
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../SalesRep/AddSalesRep.jsp">Add SalesRep</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="alert alert-box success " >record is successfully updated </div>
                    <div class="alert alert-box failure " >record is successfully Deleted </div>
                    <div class="box box-default">
                        



                        <table class="table table-condensed">
                            <thead style="font-weight: bolder">
                            <tr>
                            
                                <td>No</td>
                                <td>First Name</td>
                                <td>Mobile Number</td>
                                <td>E-Mail</td>
                                <td>Remark</td>
                                <td>Action</td>
                                
                            </tr>
                            </thead>
                            
                            <%
                            
                            	for(SalesRep salesRep:allSalesRep){
                            		
                            		
                            	
                            
                            %>
                            
                            
                            <tr>
                                <td><%=salesRep.getRepId()%></td>
                                <td><%=salesRep.getRepFirstName()+" "+salesRep.getRepLastName() %></td>
                                <td><%=salesRep.getRepMobileNumber()%></td>
                                <td><%=salesRep.getRepEmail()%></td>
                                <td><%=salesRep.getRepRemark()%></td>
                                <td>
                                <button class="btn btn-default btn-sm">

                                        <a href="" onclick="alertfunction(<%=salesRep.getRepId()%>);" data-toggle="modal" data-target="#myModal">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </a>

                                    </button>
                                    <button class="btn btn-warning btn-sm">
                                        <a href="UpdateSalesRep.jsp?salesrep_id=<%=salesRep.getRepId()%>&action=update">
                                            <i class="glyphicon glyphicon-edit"></i>
                                        </a>
                                    </button>
                                    <button class="btn btn-danger btn-sm"><a href="" onclick="salesrepdelete(<%=salesRep.getRepId()%>)" data-toggle="modal" data-target="#deleteModal"><i class="glyphicon glyphicon-trash"></i></a></button>
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

        
        <!--<button type="button" class="btn btn-info btn-lg" >Open Modal</button>-->

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class=" modal-dialog " style="width:70%;margin-top: 100px;background-color: #f0f0f0;border-radius: 50px">

                <!-- Modal content-->

                <div class="modal-content" style="background-color: #ECF0F5">

                    <div class="modal-header" style="padding: 8px 8px 8px 20px">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Supplier Informations  <span style="font-size: 15px;color: #0000cc">&nbsp;&nbsp;&nbsp;&nbsp; </span><spam style="font-size: 13px;color: #0000cc" id="" ></spam></h4>
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
                                <div class = "panel-heading" style="background-color: #0080ff;border-radius: 0px;color: #ffffff;padding: 8px 8px 8px 8px">
                                    <h3 class = "panel-title">
                                        Generel Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>SalesRep ID :</span></td>
                                            <td><span id="id"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>SalesRep First name :</span></td>
                                            <td><span id="rpfname"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>SalesRep Last name :</span></td>
                                            <td><span id="rplname"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>SalesRep NIC :</span></td>
                                            <td><span id="rpnic"></span></td>
                                        </tr>
                                        
                                    </table> 
                                </div>
                                <div class = "panel-heading" style="background-color: #0080ff;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 class = "panel-title">
                                        Contact Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>SalesRep E mail:</span></td><td><span id="rpemail"></span></td></tr>
                                        <tr ><td style="width: 190px"><span>SalesRep Mobile number :</span></td><td><span id="rpmnumber"></span></td></tr>
                                        <tr><td style="width: 190px"><span>SalesRep Address :</span></td><td><span id="rpaddress"></span></td></tr>

                                    </table> 
                                </div>
                                <div class = "panel-heading" style="background-color: #0080ff;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 class = "panel-title">
                                        Other Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>SalesRep Remark :</span></td><td><span id="rpremark"></span></td></tr>
                                        <tr><td style="width: 190px"><span>SalesRep Joined Date :</span></td><td><span id="rpjoindate"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Status :</span></td><td><span id="rpstatus"></span></td></tr>

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
                            <h4 class="modal-title">Confirm a Sales Rep Deletion</h4>
                        </div>
                        <form action="../../salesrepactivation?action=delete" method="POST">


                            <div class="modal-body">
                                <spam >This will delete this sales rep <b>permanently</b></spam><br/>
                                <spam>Are you sure want to permanently delete the selected item ?</spam>
                                
                            </div>
                            <div class="modal-footer" style="height: 48px;padding: 7px 7px 7px 17px;">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                <input type="hidden" class="form-control" id="iddelete"  name="salesRep_id" >
                                <input  type="submit" class="btn btn-danger" value="Delete SalesRep" name="delete" />


                            </div>
                        </form>
                    </div>


                </div>
            </div>

        
        

        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
    </body>
</html>
