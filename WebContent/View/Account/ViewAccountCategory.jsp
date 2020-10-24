<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Accounts Category</title>
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
            function alertfunction(excess_id){
            	
            	alert("HI");
               
                var id, excentre, exdate, extotal;

                var request = createXMLHttpRequest();
                var url = "../../GetExcessDetails";
                request.open("GET", url + "?excessVal=" + excess_id, true);
                request.send();
                request.onreadystatechange = function () {
                    if (request.readyState == 4) {
                        if (request.status == 200) {
                            var data = request.responseText;
                            alert(data);
                    
                            var rowTokens = data.split("!");
                            var x;
                            var outputData;
                            for (x = 0; x < rowTokens.length - 1; x++) {
                                var columnTokens = rowTokens[x].split(":");
                                var y;
                                for (y = 0; y < columnTokens.length; y++) {
                                }
                                id = columnTokens[0];
                                excentre = columnTokens[1];
                                exdate = columnTokens[2];
                                extotal = columnTokens[3];
                                outputData = ' <img style="max-width:223px;" src="' + "../../uploads/" + columnTokens[5].trim() + '">';
                                //CiviliansDetails.item.push({"Id": columnTokens[0], "FirstName": columnTokens[1], "LastName": columnTokens[2], "Nationality": columnTokens[3], "Mobile": columnTokens[4], "Ethnicity": columnTokens[5], "e_mail": columnTokens[6], "city": columnTokens[7], "Profession": columnTokens[9]});
                            }
                            document.getElementById('excentre').innerHTML = excentre;
                            document.getElementById('exdate').innerHTML = exdate;
                            document.getElementById('extotal').innerHTML = extotal;
                            
                            
                        }
                    }

                }
            }
            function excessdelete(excessid){
                
                document.getElementById('iddelete').value=excessid;
            }
            
        </script>


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
                        Accounts Category registration
                        <small>View Accounts Category</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">View Account Category</li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <div class="alert alert-box success " >record is successfully updated </div>
                    <div class="alert alert-box failure " >record is successfully Deleted </div>
                    <div class="box box-default">
                        <!--<div class="col-md-12" style="padding-top: 8px">-->



                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <td>No</td>
                                <td>Account Category Name</td>
                                <td>Account Category Description</td>
                              
                            </tr>
                            </thead>
                            

                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                
                                  <td><button class="btn btn-default btn-sm"> 

                                        <a href="" onclick="alertfunction();" data-toggle="modal" data-target="#myModal">
                                             <i class="glyphicon glyphicon-file"></i> 
                                         </a> 
                                   	</button> 
                                   <button class="btn btn-warning btn-sm"> 
                                        <a href="UpdateExcess.jsp?excess_id=&action=update">
                                             <i class="glyphicon glyphicon-edit"></i> 
                                      </a> 
                                     </button> 
                                    <button class="btn btn-danger btn-sm"><a href="" onclick="excessdelete()" data-toggle="modal" data-target="#deleteModal"><i class="glyphicon glyphicon-trash"></i></a></button>
                                 </td> 



 


                        </table>

                        

                    </div>
                </section>
            </div>




        </div>

        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
    </body>
</html>
