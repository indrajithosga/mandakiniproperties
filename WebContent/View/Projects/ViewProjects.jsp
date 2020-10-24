<%@page import="com.manda.dataAccess.ProjectDataAccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="com.manda.entity.Projects"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Projects</title>
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
            function alertfunction(project_id){
               
                var proid, procat, proname, prolocation, proarea, prostdate, totpurch, costpurch, totplots, proimage, salerep, proremark, prostatus;

                var request = createXMLHttpRequest();
                var url = "../../getprojectdetails";
                request.open("GET", url + "?projectVal=" + project_id, true);
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
                                
                                proid = columnTokens[0];
                                procat = columnTokens[1];
                                proname = columnTokens[2];
                                prolocation = columnTokens[3];
                                proarea = columnTokens[4];
                                prostdate = columnTokens[5];
                                totpurch = columnTokens[6];
                                costpurch = columnTokens[7];
                                totplots = columnTokens[8];
                                salerep = columnTokens[10];
                                proremark = columnTokens[11];
                                prostatus = columnTokens[12];
                                
                                
                                proimage = ' <img style="max-width:223px;" src="' + "../../dist/img/question-256x256.png" + columnTokens[9].trim() + '">';
                                //CiviliansDetails.item.push({"Id": columnTokens[0], "FirstName": columnTokens[1], "LastName": columnTokens[2], "Nationality": columnTokens[3], "Mobile": columnTokens[4], "Ethnicity": columnTokens[5], "e_mail": columnTokens[6], "city": columnTokens[7], "Profession": columnTokens[9]});
                            }
                       	    document.getElementById('proid').innerHTML = proid;
                            document.getElementById('procat').innerHTML = procat;
                            document.getElementById('proname').innerHTML = proname;
                            document.getElementById('prolocation').innerHTML = prolocation;
                            document.getElementById('proarea').innerHTML = proarea;
                            document.getElementById('prostdate').innerHTML = prostdate;
                            document.getElementById('totpurch').innerHTML = totpurch;
                            document.getElementById('costpurch').innerHTML = costpurch;
                            document.getElementById('totplots').innerHTML = totplots;
                            document.getElementById('proimage').innerHTML = proimage;
                            document.getElementById('salerep').innerHTML = salerep;
                            document.getElementById('proremark').innerHTML = proremark;
                            document.getElementById('prostatus').innerHTML = prostatus;
                            document.getElementById('provalue').innerHTML = totpurch*costpurch;
                            
                        }
                    }

                }
            }
            
            function projectdelete(projectId){
                
                document.getElementById('iddelete').value=projectId;
            }
            
        </script>


    </head>
    <body class="hold-transition skin-blue sidebar-mini" onload="load();">
 
 <%
 
 	List<Projects> allProjects=ProjectDataAccess.getAllProjects();
 
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
                        Projects registration
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../Projects/AddProject.jsp">Add Projects</a></li>
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
                                <td>Project ID</td>
                                <td>Project Type</td>
                                <td>Project Name</td>
                                <td>Project Started Date</td>
                                <td>Project Image</td>
                                <td>Action</td>
                             
                            </tr>
                            </thead>
                             
                             <%
                             
                             	for(Projects projects:allProjects){
                             
                             %>
                             
                            <tr>
                                <td><%=projects.getProId()%></td>
                                <td><%=projects.getProjectCategories().getCatName()%></td>
                                <td><%=projects.getProName()%></td>
                                <td><%=projects.getProStartedDate()%></td>
                                <td><%=projects.getProImage()%></td>
                                
                                <td><button class="btn btn-default btn-sm">

                                        <a href="" onclick="alertfunction(<%=projects.getProId()%>);" data-toggle="modal" data-target="#myModal">
                                            <i class="glyphicon glyphicon-file"></i>
                                        </a>

                                    </button>
                                    <button class="btn btn-warning btn-sm">
                                        <a href="UpdateProject.jsp?project_id=<%=projects.getProId()%>&action=update">
                                            <i class="glyphicon glyphicon-edit"></i>
                                        </a>
                                    </button>
                                    <button class="btn btn-danger btn-sm"><a href="" onclick="projectdelete(<%=projects.getProId()%>)" data-toggle="modal" data-target="#deleteModal"><i class="glyphicon glyphicon-trash"></i></a></button>
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
                        <h4 class="modal-title">Project Informations  <span style="font-size: 15px;color: #0000cc">&nbsp;&nbsp;&nbsp;&nbsp; </span><spam style="font-size: 13px;color: #0000cc" id="" ></spam></h4>
                    </div>
                    <div class="modal-body" style="margin: 0px 15px 0px 15px">
                        <div class="col-md-3" style="background-color: #ffffff;height: 473px;float: left;margin-left: -5px" >
                            <div id="proimage" style="margin-left: -15px"> </div>
                            <table>
                                <tr><td><h4 id="" style="float: left"></h4></td><td><h5 id="" ></h5></td></tr>
                                <tr><td><h5 style="font-weight: bold" id=""></h5></td></tr>
                            </table>
                            <div id=" "></div>
                        </div>
                        <!-- /.col (left) -->
                        <div class="col-md-9"style="background-color: #ffffff;height: 450px;;float: right;margin-right: -5px;">

                            <div class="panel panel-default" style="margin-left: -15px;margin-right: -15px">
                                <div class = "panel-heading" style="background-color: #0080ff;border-radius: 0px;color: #ffffff;padding: 8px 8px 8px 8px">
                                    <h3 class = "panel-title">
                                        Generel Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        <tr ><td style="width: 190px;"><span>Project ID :</span></td>
                                            <td><span id="proid"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Project Category :</span></td>
                                            <td><span id="procat"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Project Name :</span></td>
                                            <td><span id="proname"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Project Location :</span></td>
                                            <td><span id="prolocation"></span></td>
                                        </tr>
                                        <tr ><td style="width: 190px"><span>Project Area :</span></td>
                                            <td><span id="proarea"></span></td>
                                        </tr>
                                        
                                        
                                    </table> 
                                </div>
                                <div class = "panel-heading" style="background-color: #0080ff;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 class = "panel-title">
                                        Project Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table> 
                                    	<tr><td style="width: 190px"><span>Number of Purches :</span></td>
                                            <td><span id="totpurch"></span></td>
                                        </tr>             
                                        <tr ><td style="width: 190px;"><span>Cost Of Purches :</span></td><td><span id="costpurch"></span></td></tr>
                                        <tr ><td style="width: 190px;"><span>Total Plots :</span></td><td><span id="totplots"></span></td></tr>
                                        
                                         <tr><td style="width: 190px"><span>Available Plots :</span></td><td><span id=""></span></td></tr>
                                         <tr><td style="width: 190px"><span>Value Of Projects :</span></td><td><span id="provalue"></span></td></tr>
                                        
                                        
                                    </table> 
                                </div>
                                
                                 <div class = "panel-heading" style="background-color: #0080ff;color: #ffffff;border-radius: 0px;padding: 8px 8px 8px 8px">
                                    <h3 style="font-weight: bold" class = "panel-title">
                                        Other Informations
                                    </h3>
                                </div>
                                <div class = "panel-body">
                                    <table >              
                                        
                                        <tr><td style="width: 190px"><span>Project Start Date :</span></td><td><span id="prostdate"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Sales Rep :</span></td><td><span id="salerep"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Remark :</span></td><td><span id="proremark"></span></td></tr>
                                        <tr><td style="width: 190px"><span>Project Status :</span></td><td><span id="prostatus"></span></td></tr>
                                        

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
                            <h4 class="modal-title">Confirm a Project Deletion</h4>
                        </div>
                        <form action="../../projectactivation?action=delete" method="POST">


                            <div class="modal-body">
                                <spam>This will delete this Project <b>permanently</b></spam><br/>
                                <spam>Are you sure want to permanently delete the selected item ?</spam>
                                <!-- <spam>Please click the <b>Delete button</b> only ones, it will takes few moments for the <br/>deletion process to complete</spam>-->
                            </div>
                            <div class="modal-footer" style="height: 48px;padding: 7px 7px 7px 17px;">
                                <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
                                <input type="hidden" class="form-control" id="iddelete"  name="project_id" >
                                <input  type="submit" class="btn btn-danger" value="Delete Project" name="delete" />


                            </div>
                        </form>
                    </div>


                </div>
            </div>


        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
    </body>
</html>
