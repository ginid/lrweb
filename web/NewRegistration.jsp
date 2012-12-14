<%-- 
    Document   : newRegistration
    Created on : 18 Nov, 2012, 5:50:29 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="nrbean" scope="session" class="lrweb.nrbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>
            function populateFields(){
                document.nrfrm.tn.value="<jsp:getProperty name="nrbean" property="name" />";
                document.nrfrm.tfn.value="<jsp:getProperty name="nrbean" property="fatherName" />";
                document.nrfrm.ta.value="<jsp:getProperty name="nrbean" property="age" />";
                document.nrfrm.tapa.value="<jsp:getProperty name="nrbean" property="permanentAddress" />";
                document.nrfrm.tata.value="<jsp:getProperty name="nrbean" property="temporaryAddress" />";
                document.nrfrm.tnv.value="<jsp:getProperty name="nrbean" property="nameOfVehicle" />";
                document.nrfrm.tvn.value="<jsp:getProperty name="nrbean" property="vehicleNumber" />";
                document.nrfrm.ten.value="<jsp:getProperty name="nrbean" property="engineNumber" />";
                document.nrfrm.tft.value="<jsp:getProperty name="nrbean" property="fuelType" />";
                document.nrfrm.tuw.value="<jsp:getProperty name="nrbean" property="unladenWeight" />";
                document.nrfrm.tmn.value="<jsp:getProperty name="nrbean" property="manufacturerName" />";
                document.nrfrm.tym.value="<jsp:getProperty name="nrbean" property="yearOfManufacture" />";
                document.nrfrm.tnc.value="<jsp:getProperty name="nrbean" property="noOfCylinders" />";
                document.nrfrm.tsc.value="<jsp:getProperty name="nrbean" property="seatingCapacity" />";
                document.nrfrm.tbt.value="<jsp:getProperty name="nrbean" property="bodyType" />";
                document.nrfrm.thp.value="<jsp:getProperty name="nrbean" property="horsepower" />";
                      
            }
            function validateForm(){
                if(document.nrfrm.tn.value==""){
                    alert("Name Field must not be left empty");
                    document.nrfrm.tn.focus();
                    return false;
                }
                if(document.nrfrm.tfn.value==""){
                    alert("Father's Name Field must not be left empty");
                    document.nrfrm.tfn.focus();
                    return false;
                }
                if(document.nrfrm.tapa.value==""){
                    alert("Permanent Address Field must not be left empty");
                    document.nrfrm.tapa.focus();
                    return false;
                }
                if(document.nrfrm.tata.value==""){
                    alert("Temporary Address Field must not be left empty");
                    document.nrfrm.tata.focus();
                    return false;
                }
                if(document.nrfrm.tnv.value==""){
                    alert("Name of Vehicle Field must not be left empty");
                    document.nrfrm.tnv.focus();
                    return false;
                }
                if(document.nrfrm.tvn.value==""){
                    alert("Vehicle Number Field must not be left empty");
                    document.nrfrm.tvn.focus();
                    return false;
                }
                if(document.nrfrm.ten.value==""){
                    alert("Engine Number Field must not be left empty");
                    document.nrfrm.ten.focus();
                    return false;
                }
                if(document.nrfrm.tft.value==""){
                    alert("Fuel Type Field must not be left empty");
                    document.nrfrm.tft.focus();
                    return false;
                }
                if(document.nrfrm.tuw.value==""){
                    alert("Unladen Weight Field must not be left empty");
                    document.nrfrm.tuw.focus();
                    return false;
                }
                if(document.nrfrm.tmn.value==""){
                    alert("Manufacturer Name Field must not be left empty");
                    document.nrfrm.tmn.focus();
                    return false;
                }
                if(document.nrfrm.tym.value==""){
                    alert("Year of Manufacture Field must not be left empty");
                    document.nrfrm.tym.focus();
                    return false;
                }
                if(document.nrfrm.tnc.value==""){
                    alert("No of Cylinders Field must not be left empty");
                    document.nrfrm.tnc.focus();
                    return false;
                }
                if(document.nrfrm.tsc.value==""){
                    alert("Seating Capacity Field must not be left empty");
                    document.nrfrm.tsc.focus();
                    return false;
                }
                if(document.nrfrm.tbt.value==""){
                    alert("Body Type Field must not be left empty");
                    document.nrfrm.tbt.focus();
                    return false;
                }
                if(document.nrfrm.thp.value==""){
                    alert("Horsepower Field must not be left empty");
                    document.nrfrm.thp.focus();
                    return false;
                }
                
            }
        </script>
    </head>
    <body onload="populateFields()">
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">New Registration</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="nrfrm" action="receive_nr_request.jsp" method="POST">
                                    <fieldset>
                                        <p style="text-decoration: underline"><strong>Personal Information</strong></p>
                                        <div class="box">
                                            <p><label>Name:</label><input type="text" name="tn"  /></p>
                                            <p><label>Father's\Husband's Name:</label><input type="text" name="tfn"/></p>
                                            <p><label>Age:</label><input type="text" name="ta"/></p>
                                            <p><label>Permanent Address:</label><textarea name="tapa" rows="4" ></textarea></p>
                                            <p><label>Temporary Address:</label><textarea name="tata" rows="4" ></textarea></p>
                                        </div>
                                        <p><label>Name of Vehicle:</label><input type="text" name="tnv" value="" /></p>
                                        <p><label>Vehicle Number:</label><input type="text" name="tvn" value="" /></p>
                                        <p><label>Engine Number:</label><input type="text" name="ten" value="" /></p>
                                        <p><label>Fuel Type:</label><input type="text" name="tft" value="" /></p>
                                        <p><label>Unladen Weight:</label><input type="text" name="tuw" value="" /></p>
                                        <p><label>Manufacturer Name:</label><input type="text" name="tmn" value="" /></p>
                                        <p><label>Year of Manufacture:</label><input type="text" name="tym" value="" /></p>
                                        <p><label>No of Cylinders:</label><input type="text" name="tnc" value="" /></p>
                                        <p><label>Seating Capacity:</label><input type="text" name="tsc" value="" /></p>
                                        <p><label>Body Type:</label><input type="text" name="tbt" value="" /></p>
                                        <p><label>Horsepower(in cc):</label><input type="text" name="thp" value="" /></p>
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