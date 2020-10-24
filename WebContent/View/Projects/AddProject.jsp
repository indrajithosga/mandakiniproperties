<%@page import="com.manda.dataAccess.SalesRepDataAccess"%>
<%@page import="com.manda.entity.SalesRep"%>
<%@page import="com.manda.dataAccess.ProjectsCategoryDataAccess"%>
<%@page import="com.manda.entity.ProjectCategories"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD PROJECT</title>

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
 
 	List<ProjectCategories> allProjectCategories=ProjectsCategoryDataAccess.getAllProjectCategory();
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
                        ADD PROJECT
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../Projects/ViewProjects.jsp">View Projects</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <form action="../../addproject" method="post">
                    
                    <div class="row">
                        
                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">Project Informations</h3>
                                    </div>
                                    <div class="box-body">
                                    
                                    <div class="form-group">
                                            <div class="form-group">
                                                <label>Project Category:</label>
                                                 <select class="form-control" id="projcatname" name="projcatname"> 
                                                    <option value="">Please Select Projects Category</option> 
                                                    
                                                   <%
                                                   
                                                   	for(ProjectCategories projectCategories:allProjectCategories){
                                                   
                                                   %>
                                                  
                                                      <option value="<%=projectCategories.getCatId() %>"><%=projectCategories.getCatName() %></option>
                                                    
                                                    <%
                                                   	}
                                                    %>
                                                    
                                                </select> 

                                            </div>
                                        </div>
                                    
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Project Name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="proname" name="proname" placeholder="Enter Project Name">
                                                <span id="msgproname"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Project Location:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="prolocation" name="prolocation" placeholder="Enter Project Location">
                                                <span id="msgprolocation"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Project Area:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="proarea" name="proarea" placeholder="Enter Project Area">
                                                <span id="msgproarea"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Project Started Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="prodate" name="prodate" placeholder="YYYY/MM/DD">
                                                <span id="msgprodate"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <div class="form-group">
                                                <label>Total Purches:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="totalpurches" name="totalpurches" placeholder="Enter Total Purches">
                                                <span id="msgtotalpurches"  style="color: #ff0000"></span>
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
                                                <label>Cost Of Purches:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="costofpursha" name="costofpursha" placeholder="Enter Cost Of Purchase">
                                                <span id="msgcostofpursha"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Total Plots:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="totplot" name="totplot" placeholder="Enter Total Of Plots">
                                                <span id="msgtotplot"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                   
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Project Image:</label>
                                                <input type="file" class="form-control my-colorpicker1 required" id="proimage" name="proimage" >
                                                <span id="msgproimage"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Sales Rep:</label>
                                                 <select class="form-control" id="projectsalname" name="projectsalname"> 
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
                                                <label>Project Remark:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="proremark" name="proremark" placeholder="Enter Project Remark">
                                                <span id="msgproremark"  style="color: #ff0000"></span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>

                            </div>
                        
                    </div>
                        <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="AddProject" name="add"/>
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
