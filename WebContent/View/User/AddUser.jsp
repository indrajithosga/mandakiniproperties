<%@page import="com.manda.dataAccess.RoleDataAccess"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%> 
<%@page import="com.manda.entity.Role"%> 

    
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


    </head>
    <body class="hold-transition skin-blue sidebar-mini" onload="load();">
    
  <%
  
  List<Role> allRole=RoleDataAccess.getAllRole();
  
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
                        Add User
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../User/ViewUser.jsp">View Users</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">
                    <form action="../../adduser" method="post" onsubmit="return validation()">
                        <div class="row">



                            <div class="col-md-6">
                                <div class="box box-primary">
                                    <div class="box-header">
                                        <h3 class="box-title">Basic informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User First Name:</label>

                                                <input type="text" class="form-control my-colorpicker1 required" id="fname" name="fname" placeholder="Enter first name">
                                                <span id="msgfname"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Last Name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="lname" name="lname" placeholder="Enter last name">
                                                <span id="msglname"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User NIC:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="nic" name="nic" placeholder="Enter NIC number">
                                                <span id="msgnic"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Gender:</label>

                                                <div class="form-control" style="border: hidden">
                                                    <label class="radio-inline"><input type="radio" id="male" name="gender" value="male"/>Male</label>
                                                    <label class="radio-inline"><input type="radio" id="female" name="gender" value="female"/>Female</label>
                                                </div>
                                            </div>

                                        </div>
                                        
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Name:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="usname" name="usname" placeholder="Enter User Name">
                                                <span id="msgusname"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>
                                        
                                                                                
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Date Of Birth:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="dob" name="dob" placeholder="YYYY/MM/DD">
                                                <span id="msgdob"  style="color: blue; font-weight: bold;font-style: italic;">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Image:</label>
                                                <input type="file" class="form-control my-colorpicker1 required" id="usimage" name="usimage" >
                                                <span id="usimage"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                            <!-- /.col (left) -->
                            <div class="col-md-6">
                                <div class="box box-warning">
                                    <div class="box-header">
                                        <h3 class="box-title">Contact informations</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Phone Number:</label>
                                                <input type="text" class="form-control my-colorpicker1 required" id="pnumber" name="pnumber" placeholder="Enter phone number">
                                                <span id="msgpnumber"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Email:</label>
                                                <input type="email" class="form-control my-colorpicker1 required" id="email" name="email" placeholder="Enter email">
                                                <span id="msgemail"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>Address:</label>
                                                <textarea class="form-control required" rows="4" id="address" name="address" placeholder="Enter Address"></textarea>
                                                <span id="msgaddress"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="form-group">
                                                <label>User Role:</label>
                                                <select class="form-control" id="role" name="role">
                                                
                                                
                                                    <option value="">Please Select Role</option>
                                                    
                                                   <%
                                                
                                                	for(Role role:allRole){
                                                
                                                	%>
                                                    
                                                    <option value="<%=role.getRoleId()%>"><%=role.getRoleName() %></option>
												
												<%
												
                                                	}
												
												%>
												
													
                                                </select>

                                            </div>
                                        </div>
                                        
                                         <div class="form-group">
                                            <div class="form-group">
                                                <label>User Joined Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="userjoindate" name="userjoindate" placeholder="YYYY/MM/DD">
                                                <span id="msgjoindate"  style="color: blue; font-weight: bold;font-style: italic;"></span>
                                            </div>
                                        </div>
                                        
                                    </div>
                                </div>

                            </div>



                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary required" value="AddUser" name="add"/>
                            <input type="reset" class="btn btn-danger" />
                        </div>

                    </form>
                </section>
            </div>




        </div>
        
      

        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
        
        
      <!--   <script type="text/javascript">
        
        	function checkforblank(){
        		
        		        		
        		if(document.getElementById('fname').value == ""){
        			alert('please enter first name');
        			document.getElementById('fname').style.borderColor="red";
        			return false;
        		}
        		
        	}
        
        
        </script> -->
        
        <script type="text/javascript">

		
	function validation(){
	
	var fname =document.getElementById('fname').value;
	var lname =document.getElementById('lname').value;
	var nic =document.getElementById('nic').value;
	
	var male =document.getElementById('male').value;
	var female =document.getElementById('female').value;
	
	var usname =document.getElementById('usname').value;
	
	var dob =document.getElementById('dob').value;
	var usimage =document.getElementById('usimage').value;
	
	var pnumber =document.getElementById('pnumber').value;
	var email =document.getElementById('email').value;
	
	var address =document.getElementById('address').value;
	
	var role =document.getElementById('role').value;
	var joindate =document.getElementById('userjoindate').value;
	
	
	if(fname==""){
		
		document.getElementById('msgfname').innerHTML="** Please Enter User First Name**";
		return false;
		
	}
	
	if(!isNaN(fname)){
		document.getElementById('msgfname').innerHTML=" ** only charactors are allowed**";
		return false;
				
	}
	
	
	if(lname==""){
		
		document.getElementById('msglname').innerHTML="**Please Enter User Last Name**";
		return false;
		
	}
	
	if(!isNaN(lname)){
		document.getElementById('msglname').innerHTML=" ** only charactors are allowed **";
		return false;
				
	}
	
	if(nic==""){
		
		document.getElementById('msgnic').innerHTML=" ** Please Enter User NIC **";
		return false;
		
	}
	
	if(usname==""){
		
		document.getElementById('msgusname').innerHTML="Please Enter User Name";
		return false;
		
	}
	if(usname.length<=2||fname>20){
		document.getElementById('msgusname').innerHTML=" ** User Length must be between 2 and 20 **";
		return false;
		
	}
	if(!isNaN(usname)){
		document.getElementById('msgusname').innerHTML=" ** only charactors are allowed **";
		return false;
				
	}
	
	if(dob==""){
		
		document.getElementById('msgdob').innerHTML=" ** Please Enter User Date Of Birth **";
		return false;
		
	}
	
	if(pnumber==""){
		
		document.getElementById('msgpnumber').innerHTML=" ** Please Enter User Phone Number **";
		return false;
		
	}
	if(isNaN(pnumber)){
		document.getElementById('msgpnumber').innerHTML=" ** only numbers are allowed **";
		return false;
				
	}
	if(pnumber.length!=10){
		
		document.getElementById('msgpnumber').innerHTML=" ** mobile must be 10 digits **";
		return false;
		
	}
	
	if(email==""){
		
		document.getElementById('msgemail').innerHTML=" ** Please Enter User Email **";
		return false;
		
	}
	
	if(joindate==""){
		
		document.getElementById('msgjoindate').innerHTML=" ** Please Select User Joined Date **";
		return false;
		
	}
	
	
}



</script>
          
        
    </body>
    
    
</html>
