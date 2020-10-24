<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.manda.dataAccess.ProjectDataAccess"%>
<%@page import="com.manda.dataAccess.UserDataAccess"%>
<%@page import="com.manda.dataAccess.ExpensesDataAccess"%>
<%@page import="java.util.List"%> 
<%@page import="com.manda.entity.Expenses"%>
<%@page import="com.manda.entity.Projects"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD BUDGET</title>
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
                  
         
            
            function setText() {
                document.getElementById("fc").innerHTML = 0.0;
                document.getElementById("com").innerHTML = 0.0;
                document.getElementById("papercash").innerHTML = 0.0;
                document.getElementById("loan").innerHTML = 0.0;
                document.getElementById("pd").innerHTML = 0.0;
                document.getElementById("lcnc").innerHTML = 0.0;
                document.getElementById("paymentTotal").innerHTML = 0.0;
                document.getElementById("cash").innerHTML = 0.0;
                document.getElementById('paycoms').innerHTML = 0.0;
                document.getElementById('duesub').innerHTML = 0.0;
                document.getElementById('paysub').innerHTML = 0.0;
                document.getElementById('balance').innerHTML = 0.0;
            }
            
              

        </script>
        <script>
          

            var increment = 0;
            var rowCount;
            function addRow(tableID) {

                var expname = document.getElementById('expname').value;
                var amount = document.getElementById('amount').value;
                
                var stampfee=document.getElementById('legalfee').textContent;
                var suvcharge=document.getElementById('suvcharge').textContent;
                
                var suvcharge=document.getElementById('suvcharge').textContent;
                var commision=document.getElementById('commision').textContent;
                var landcrearing=document.getElementById('landcrearing').textContent;
                var eletrsupply=document.getElementById('eletrsupply').textContent;
                var advertising=document.getElementById('advertising').textContent;
                var watersuply=document.getElementById('watersuply').textContent;
                var incidcost=document.getElementById('incidcost').textContent;
                var watchersupl=document.getElementById('watchersupl').textContent
                var tax=document.getElementById('tax').textContent
                var bankinterest=document.getElementById('bankinterest').textContent
                
                              
                	if(stampfee==('Legal Fee and Stamp Fee')){
                	
                		document.getElementById('lefestfe').value=amount;
                	
                	}else if (suvcharge=='Surveyor Charge'){
					
                	document.getElementById('surcharge').value=amount;
				}
                	
				
                
               
                var table = document.getElementById(tableID);
                rowCount = table.rows.length;
                document.getElementById("rowcount").value = rowCount;
                var row = table.insertRow(rowCount);
                var cell1 = row.insertCell(0);
                var element1 = document.createElement("input");
                element1.type = "checkbox";
                element1.name = "chkbox[]";
                cell1.appendChild(element1);

                var counts = rowCount - 1;
                var cell2 = row.insertCell(1);
                var chitNo = document.createElement("input");
                chitNo.type = "text";
                if (rowCount % 2 == 1) {
                    chitNo.style = "border-style: hidden;background-color : #EEEEEE;width:117px";
                } else {
                    chitNo.style = "border-style: hidden;width:117px";
                }
                chitNo.name = "houseNum[" + counts + "]";
                chitNo.id = "houseNum[" + counts + "]";
                chitNo.value = expname;
                //document.getElementById("rowcount").value = count-1;
                cell2.appendChild(chitNo);

                var cell3 = row.insertCell(2);
                var chitAmount = document.createElement("input");
                chitAmount.type = "text";
                if (rowCount % 2 == 1) {
                    chitAmount.style = "border-style: hidden;background-color : #EEEEEE;width:152px";
                } else {
                    chitAmount.style = "border-style: hidden;width:152px";
                }
                chitAmount.name = "city[" + counts + "]";
                chitAmount.value = amount;
                cell3.appendChild(chitAmount);

                var cell4 = row.insertCell(3);
                var chitPay = document.createElement("input");
                chitPay.type = "text";
                if (rowCount % 2 == 1) {
                    chitPay.style = "border-style: hidden;background-color : #EEEEEE;width:148px";
                } else {
                    chitPay.style = "border-style: hidden;width:148px";
                }
                chitPay.name = "country[" + counts + "]";
                chitPay.id = "country[" + (counts - 1) + "]";
                
                cell4.appendChild(chitPay);


 
                var cell5 = row.insertCell(4);
                var btn = document.createElement("a");
                //btn.type = "button";
                btn.setAttribute("class", "glyphicon glyphicon-trash");
                btn.atribute = "<a href='#' style='color:red' style='float : right'  onClick='Javacsript:deleteRow(this)' >  <i class='glyphicon glyphicon-trash'></i></a> "
                btn.onclick = function () {

                    var table = document.getElementById('addressesTable');
                    var rowCount = table.rows.length;

                    if (rowCount % 2 == 1) {

                        chitNo.style = "border-style: hidden;background-color : #ffffff";
                        chitAmount.style = "border-style: hidden;background-color : #ffffff";
                        chitPay.style = "border-style: hidden;background-color : #EEEEEE";
                    } else {
                        chitNo.style = "border-style: hidden";
                    }

                    for (var i = 0; i < rowCount; i++) {
                        var row = table.rows[i];

                        var chkbox = row.cells[0].childNodes[0];

                        if (null != chkbox && true == chkbox.checked) {
                            table.deleteRow(i);
                            rowCount--;
                            i--;

                        }
                    }

                    var j;
                    var total = 0;
                    var row = rowCount - 2
                    if (row > 0) {
                        for (var i = 2; i < rowCount; i++) {
                            j = document.getElementById("addressesTable").rows[i].cells[3].getElementsByTagName("input")[0].value;
                            var k = parseInt(j);
                            total = total + k;
                            increment = 1;
                        }
                        document.getElementById('paymentTotal').value = total;
                    } else {
                        document.getElementById('paymentTotal').value = 0;
                    }
                    calculations();
                };
                btn.name = "button[" + counts + "]";
                cell5.appendChild(btn);
                rowTot();
              
                document.getElementById('expname').value = "";
                document.getElementById('amount').value = "";
                
            }
            function rowTot() {
                var j;
                var total = 0;
                var row = rowCount - 2
                if (row > 0) {
                    for (var i = 2; i < rowCount + 1; i++) {
                        j = document.getElementById("addressesTable").rows[i].cells[3].getElementsByTagName("input")[0].value;
                        var k = parseInt(j);
                        total = total + k;
                        increment = 1;
                    }
                    document.getElementById('paymentTotal').value = total;
                } 
                calculations();
            }


            function totlcnc() {
                var lcAmount = parseFloat(document.getElementById('lamount').value);
                var ncAmount = parseFloat(document.getElementById('namount').value);
                var lcrate = parseFloat(document.getElementById('lcrate').value);
                var ncrate = parseFloat(document.getElementById('ncrate').value);

                document.getElementById('lcnc').value = (lcAmount * lcrate / 100) + (ncAmount * ncrate / 100);

            }
        </script>


    <script>
            /*   Date date=new Date();
             SimpleDateFormat df=new SimpleDateFormat("MdYYhms");*/
            function selectedItem() {
                var today = new Date();
                var d = today.getDate();
                var m = today.getMonth() + 1;
                var y = today.getFullYear();

                if (d <= 9)
                    d = '0' + d;

                if (m <= 9)
                    m = '0' + m;
                document.getElementById('date').innerHTML = y + "/" + m + "/" + d;
                document.getElementById('dates').value = y + "-" + m + "-" + d;
            }

        </script>
    </head>
    <body class="hold-transition skin-blue sidebar-mini" onload="selectedItem();" >
    
   <%

	List<Expenses> allExpenses=ExpensesDataAccess.getAllExpenses();
	List<Projects> allProjects=ProjectDataAccess.getAllProjects();


	%>     

      
        <div class="wrapper">
            <div style="height: 50px" >
                <header class="main-header effect" >
                    <a href="../../index2.html" class="logo" > 
                        <span class="logo-mini"><b>A</b>LT</span>
                        <span class="logo-lg"><b>MANDAKINI</b> PROPERTIES</span>
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
                        Add Budget
                        
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../Dashboard/DashBoard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active"><a href="../Budgets/ViewBudget.jsp">View Budget</a></li>
                    </ol>
                </section>
                <!-- Main content -->
                <section class="content">

                    <div class="row">
                        <form action="../../addbudget" method="post">
                            <section class="content">

                                <div class="row">

                                    <div class="col-md-8">
                                        <div class="box box-primary">
                                            <div class="box-header">
                                                <h3 class="box-title" >Budget Informations</h3>
                                                <div  id="date" name="date" style="float: right;font-size: 16px;"></div>
                                                <input type="hidden" id="dates" name="dates"  style="float: right;font-size: 16px"/>
                                            </div>
                                            <div class="box-body" style="padding-bottom: 70px">

                                                <div class="col-md-6" style="padding-left: 0px; padding-right: 0px">
                                                    <div class="form-group">
                                            <div class="form-group">
                                                <label>Projects Name:</label>
                                                 <select class="form-control" id="projectname" name="projectname"> 
                                                    <option value="">Please Select Projects</option> 
                                                    
                                                   <%
                                                   
                                                   		for(Projects projects:allProjects){
                                                   
                                                   %>
                                                  
                                                      <option value="<%=projects.getProId()%>"><%=projects.getProName()%></option>
                                                    
                                                    <%
                                                    
                                                   		}
                                                    
                                                    %>
                                                    
                                                </select> 

                                            </div>
                                        </div>
                                                    <div class="form-group">

                                                    </div>
                                                    <div class="form-group">
                                            <div class="form-group">
                                                <label>Add Budget Date:</label>
                                                <input type="date" class="form-control my-colorpicker1 required" id="exallodate" name="exallodate" placeholder="YYYY/MM/DD">
                                                <span id="msgexallodate"  style="color: #ff0000"></span>
                                            </div>
                                        </div>

                                                </div>
                                                <div class="col-md-6" style=" padding-right: 0px">
                                         <div class="form-group">
                                            	<div class="form-group">
                                                	<label>Budget Name:</label>
                                                	<input type="text" class="form-control my-colorpicker1 required" id="budname" name="budname" placeholder="Enter Budget Name">
                                                	<span id="msgbudname"  style="color: #ff0000"></span>
                                            	</div>
                                        </div>
                                                   <div class="form-group">
                                            	<div class="form-group">
                                                	<label>Remark:</label>
                                                	<input type="text" class="form-control my-colorpicker1 required" id="remark" name="remark" placeholder="Enter Budget Remark">
                                                	<span id="msgbudname"  style="color: #ff0000"></span>
                                            	</div>
                                        </div>
                                                </div>

                                                <!-- /////////////////////////-->
                                                <div class="col-md-12" style="padding:15px 15px 15px 15px;background-color: #f0f0f0">
                                                    <div class="col-md-4" style="padding-left: 0px;width: 255px">
                                                       <div class="form-group">
                                            <div class="form-group">
                                                 <label style="color: #0066cc">Expenses Name:</label>
                                                 <select class="form-control" id="expname" name="expname"> 
                                                    <option value="">Please Select Expenses</option> 
                                                    
                                                    <%
                                                    
                                                    for(Expenses expenses:allExpenses){
                                                    
                                                    %>
                                                   
                                          <option value="<%=expenses.getExpName()%>"><%=expenses.getExpName()%></option>
                                                      
                                                    <%
                                                    }
                                                    %>  
                                               </select> 
                                            </div>
                                        </div>
                                                    </div>
                                                    <div class="col-md-4"style="width:182px;padding-left: 0px;padding-right: 0px;margin-left: -15px">
                                                        <div class="form-group">
                                                            <label style="color: #0066cc">Allocated Amount</label>
                                                            <input type="text" id="amount" name="amount" class="form-control" style="font-size: 20px;">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3"style="width:178px;padding-left: 0px;padding-right: 0px">
                                                        <div class="form-group">
                                                            <label style="color: #0066cc">Remark</label>
                                                            <input type="text" id="payment" name="payment"style="font-size: 16px;" class="form-control" >
                                                        </div>
                                                    </div>


                                                    <div class="col-md-1" style="margin-left: -15px">
                                                        <div class="form-group">
                                                            <label >.</label>
                                                            <button type="button" name="button[0]"   id="add" value="Add" onclick="addRow('addressesTable')" style="border-radius: 0px"  class="btn btn-primary">
                                                                <i class="glyphicon glyphicon-plus-sign"></i>
                                                                Add</button>
                                                        </div>
                                                    </div>

                                                    <!-- /////////////////////////-->
                                                    <table id="addressesTable"  class="table-style-three"   width='100%' style="padding: 10px 10px 10px 10px" >
                                                        <tr>
                                                            <th>select</th>
                                                            <th>Expenses</th>
                                                            <th>Amount</th>
                                                            <th>payment</th>
                                                            <th>action</th>
                                                        </tr>

                                                        <tr hidden>
                                                        <input type="text"  id="rowcount" name="rowcount" />
                                                        <td ><input type="checkbox" name="chk"/></td>

                                                        <td><input type="text" style="border-style: hidden;background-color: #EEEEEE" name="houseNum[0]" /></td>
                                                        <td><input type="text" style="border-style: hidden;background-color: #EEEEEE" name="city[0]" /></td>
                                                        <td><input type="text" style="border-style: hidden;background-color: #EEEEEE"  name="country[0]"   /></td>
                                                        <td> <a name="button[0]"  href='#' style='color:red' style='float : right'  onClick="deleteRow('addressesTable')" >  <i class='glyphicon glyphicon-trash'></i></a> </td>
                                                        </tr>
                                                    </table>

                                                </div>


                                                <div class="col-md-12 " style="padding-left: 0px;padding-right: 0px;padding-top: 10px;">

                                                </div>
                                                <div id="myDiv"></div>
                                                <div class="col-md-12 " style="height: 200px">

                                                    <table>
                                                        <tr style="border-top: 1px solid">
                                                            <td id="legalfee" style="width: 200px"><label>Legal Fee and Stamp Fee :</label></td>
                                                            <td > <input type="text" style="font-size:  20px;border:none;width: 170px" readonly  id="lefestfe" name="lefestfe" value="0.00"/></td>
                                                            <td id="admin" style="width: 150px"><label>Administration :</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 120px;text-align: right" readonly  id="exc" name="exc" value="0.00"/></td> 
                                                        </tr>
                                                        <tr>
                                                            <td id="suvcharge" style="width: 200px"><label>Surveyor Charge :</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 170px" readonly  id="surcharge" name="surcharge" value="0.00" value="0.00"/></td> 
                                                            <td id="commision" style="width: 150px"><label>Commision :</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 120px;text-align: right" readonly  id="exc" name="exc" value="0.00"/></td>
                                                        </tr>
                                                        <tr>
                                                            <td id="landcrearing" style="width: 200px"><label>Land Clearing :</label></td >
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 170px" readonly  id="landclearing" name="landclearing" value="0.00"/></td>
                                                            <td id="eletrsupply" style="width: 150px"><label>Electricity Supply :</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 120px;text-align: right" readonly  id="exc" name="exc" value="0.00"/></td> 
                                                            
                                                        </tr><tr>
                                                            <td id="advertising" style="width: 200px"><label>Advertising:</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 170px" readonly  id="loan" name="loan" placeholder="0.00"/></td> 
                                                            <td id="watersuply" style="width: 150px"><label>Water Supply :</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 120px;text-align: right" readonly  id="exc" name="exc" value="0.00"/></td>
                                                        </tr>

                                                        <tr>
                                                            <td id="incidcost" style="width: 200px"><label>Incidentiol Cost (P.S):</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 170px" readonly  id="pd" name="pd" placeholder="0.00"/></td> 
                                                            <td id="watchersupl" style="width: 150px"><label>Watcher Supply :</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 120px;text-align: right" readonly  id="cash" name="cash" value="0.00"/></td>
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td id="tax" style="width: 200px"><label>Tax:</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 170px" readonly  id="pd" name="pd" placeholder="0.00"/></td> 
                                                            <td id="bankinterest" style="width: 150px"><label>Bank Interest :</label></td>
                                                            <td ><input type="text" style="font-size:  20px;border:none;width: 120px;text-align: right" readonly  id="cash" name="cash" value="0.00"/></td>
                                                        </tr>

                                                        <tr style="border-top: 1px solid">
                                                            <td style="width: 200px"><label></label></td>
                                                            <td ><input type="text" style="font-size:  20px;font-weight: bold;border:none;width: 170px" readonly  id="duesub" name="duesub"/></td> 
                                                            <td id="paymenttotal" style="width: 170px"><label >Payment Total</label></td>
                                                            <td ><input type="text" style="font-size:  27px;border:none;width: 120px;font-weight: bold;text-align: right" readonly  id="paymentTotal" name="paymentTotal" value="0.00"/></td>
                                                        <tr  style="border-top: 1px solid;">
                                                            <td colspan="2" ></td>
                                                            <td id="budgettotal" style="width: 150px;font-size:  20px;border-bottom: 2px solid"><label>Budget Total :</label></td>
                                                            <td style="border-bottom: 2px solid;"><input type="text" style="width: 120px;font-size:  25px;font-weight: bold;color: #0000ff;border: none;text-align: right;" readonly  id="budtotal" name="budtotal" value="0.00"/></td>
                                                        </tr >
                                                    </table>

                                                </div>

                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <input type="submit" class="btn btn-info" value="Add Budget" name="Add"/>
                                            <input type="reset" class="btn btn-danger" />

                                            <!-- <button type="submit" name="submit" class="btn btn-info">
                                                 <i class="glyphicon glyphicon-save"></i>
                                                 Submit</button>
                                             <button type="reset" name="reset" class="btn btn-primary">
                                                 <i class="glyphicon glyphicon-trash"></i>
                                                 Clear</button>-->
                                        </div>
                                    </div>
                                    <!-- /.col (left) -->
                          
                          			</div>

                            </section>


                        </form>

                    </div>



                </section>
            </div>




        </div>

        <script src="../../bootstrap/js/bootstrap.min.js"></script>
        <script src="../../dist/js/app.min.js"></script>
    </body>
</html>
