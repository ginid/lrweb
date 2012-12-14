<%-- 
    Document   : RegistrationRenewal
    Created on : 20 Nov, 2012, 12:02:22 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="rrbean" scope="session" class="lrweb.rrbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Renewal</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>
            function populateFields(){    
                document.rrfrm.tn.value="<jsp:getProperty name="rrbean" property="name" />";
                document.rrfrm.trn.value="<jsp:getProperty name="rrbean" property="registrationNumber" />";
                document.rrfrm.ddi.value="<jsp:getProperty name="rrbean" property="dateOfIssue" />";
                document.rrfrm.dde.value="<jsp:getProperty name="rrbean" property="dateOfExpiry" />";
                document.rrfrm.tapa.value="<jsp:getProperty name="rrbean" property="presentAddress" />";
                document.rrfrm.tcv.value="<jsp:getProperty name="rrbean" property="classOfVehicle" />";
                //set the vehicleType combobox to the selected value{start}
                    var x=document.rrfrm.svt;
                    var index=0;
                    var i;
                    for (i=0;i<x.length;i++)
                    {
                        if(x.options[i].value=="<jsp:getProperty name="rrbean" property="vehicleType" />"){
                            index=i;
                            break;
                        }
                    }
                    document.rrfrm.svt.selectedIndex=index;
                //end
                document.rrfrm.ttb.value="<jsp:getProperty name="rrbean" property="typeOfBody" />";
                document.rrfrm.tmn.value="<jsp:getProperty name="rrbean" property="makersName" />";
                document.rrfrm.tym.value="<jsp:getProperty name="rrbean" property="yearOfManufacture" />";    
                document.rrfrm.tnc.value="<jsp:getProperty name="rrbean" property="noOfCylinders" />";    
                document.rrfrm.tcc.value="<jsp:getProperty name="rrbean" property="cubicCapacity" />";    
                document.rrfrm.tmc.value="<jsp:getProperty name="rrbean" property="makersClassification" />";    
                document.rrfrm.ten.value="<jsp:getProperty name="rrbean" property="engineNumber" />";    
                document.rrfrm.tsc.value="<jsp:getProperty name="rrbean" property="seatingCapacity" />";
                document.rrfrm.tuw.value="<jsp:getProperty name="rrbean" property="unladenWeight" />";                
                document.rrfrm.tfu.value="<jsp:getProperty name="rrbean" property="fuelUsed" />";
           }
           function validateForm(){
               if(document.rrfrm.tn.value==""){
                   alert("Name Field should not be left empty");
                   document.rrfrm.tn.focus();
                   return false;
               }
               if(document.rrfrm.trn.value==""){
                   alert("Registration Number Field should not be left empty");
                   document.rrfrm.trn.focus();
                   return false;
               }
               if(document.rrfrm.ddi.value==""){
                   alert("Date of Issue Field should not be left empty");
                   document.rrfrm.ddi.focus();
                   return false;
               }
               if(document.rrfrm.dde.value==""){
                   alert("Date of Expiry Field should not be left empty");
                   document.rrfrm.dde.focus();
                   return false;
               }
               if(document.rrfrm.tapa.value==""){
                   alert("Present Address Field should not be left empty");
                   document.rrfrm.tapa.focus();
                   return false;
               }
               if(document.rrfrm.tcv.value==""){
                   alert("Class of Vehicle Field should not be left empty");
                   document.rrfrm.tcv.focus();
                   return false;
               }
               if(document.rrfrm.svt.value=="none"){
                   alert("Please select a vehicle Type");
                   document.rrfrm.svt.focus();
                   return false;
               }
               if(document.rrfrm.ttb.value==""){
                   alert("Type of Body Field should not be left empty");
                   document.rrfrm.ttb.focus();
                   return false;
               }
               if(document.rrfrm.tmn.value==""){
                   alert("Maker's Name Field should not be left empty");
                   document.rrfrm.tmn.focus();
                   return false;
               }
               if(document.rrfrm.tym.value==""){
                   alert("Year of Manufacture Field should not be left empty");
                   document.rrfrm.tym.focus();
                   return false;
               }
               if(document.rrfrm.tnc.value==""){
                   alert("No of Cylinders Field should not be left empty");
                   document.rrfrm.tnc.focus();
                   return false;
               }
               if(document.rrfrm.tcc.value==""){
                   alert("Cubic Capacity Field should not be left empty");
                   document.rrfrm.tcc.focus();
                   return false;
               }
               if(document.rrfrm.tmc.value==""){
                   alert("Maker's Classification Field should not be left empty");
                   document.rrfrm.tmc.focus();
                   return false;
               }
               if(document.rrfrm.ten.value==""){
                   alert("Engine Number Field should not be left empty");
                   document.rrfrm.ten.focus();
                   return false;
               }
               if(document.rrfrm.tsc.value==""){
                   alert("Seating Capacity Field should not be left empty");
                   document.rrfrm.tsc.focus();
                   return false;
               }
               if(document.rrfrm.tuw.value==""){
                   alert("Unladen Weight Field should not be left empty");
                   document.rrfrm.tuw.focus();
                   return false;
               }
               if(document.rrfrm.tfu.value==""){
                   alert("Fuel Used Field should not be left empty");
                   document.rrfrm.tfu.focus();
                   return false;
               }
           }
        </script>
    </head>
    <body onload="populateFields()">
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:95%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Application for renewal of Certificate of Registration of Motor Vehicle</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="rrfrm" action="receive_rr_request.jsp" method="POST">
                                    <fieldset>
                                        <p><label>Name:</label><input type="text" name="tn" value="" /></p>                                        
                                        <p><label>Registration Number:</label><input type="text" name="trn" value="" /></p>
                                        <p><label>Date of Issue:</label><input type="date" name="ddi" /></p>
                                        <p><label>Date of Expiry:</label><input type="date" name="dde"  /></p>
                                        <p><label>Present Address:</label><textarea name="tapa"></textarea></p>
                                        <p style="text-decoration: underline"><strong>Registrations Details</strong></p>
                                        <div class="box">
                                            <p><label>Class of Vehicle:</label><input type="text" name="tcv" value="" /></p>
                                            <p><label>The Motor Vehicle was registered as:</label><select name="svt">
                                                                                            <option value="none">Choose Your Vehicle Type</option>
                                                                                            <option value="A new Vehicle">A new Vehicle</option>
                                                                                            <option value="Ex-Army Vehicle">Ex-Army Vehicle</option>
                                                                                            <option value="Imported Vehicle">Imported Vehicle</option>                                                                                            
                                                                                          </select></p>
                                            <p><label>Type of Body:</label><input type="text" name="ttb" /></p>
                                            <p><label>Maker's Name:</label><input type="text" name="tmn" value="" /></p>
                                            <p><label>Year of Manufacture:</label><input type="text" name="tym" value="" /></p>
                                            <p><label>Number of Cylinders:</label><input type="text" name="tnc" value="" /></p>
                                            <p><label>Cubic Capacity</label><input type="text" name="tcc" value="" /></p>
                                            <p><label>Maker's Classification:</label><input type="text" name="tmc" value="" /></p>
                                            <p><label>Engine Number:</label><input type="text" name="ten" value="" /></p>
                                            <p><label>Seating Capacity(including Driver):</label><input type="text" name="tsc" value="" /></p>
                                            <p><label>Unladen Weight:</label><input type="text" name="tuw" value="" /></p>
                                            <p><label>Fuel Used:</label><input type="text" name="tfu" value="" /></p>                                            
                                        </div>                                        
                                        <input class="button" type="submit" value="Submit" onclick="return validateForm()" /><input class="button" type="reset" value="Clear" />
                                    </fieldset>
                                </form>
                                <%}%>
                            </div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
