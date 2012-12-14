<%-- 
    Document   : NewClassVehicleAddition
    Created on : 20 Nov, 2012, 11:54:03 AM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="ncvbean" scope="session" class="lrweb.ncvbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>
            function populateFields(){
                document.ncvfrm.tpln.value="<jsp:getProperty name="ncvbean" property="licenseNumber" />";
            }
            function validateForm(){
                if(document.ncvfrm.tpln.value==""){
                    alert("License Number must be entered");
                    document.dlfrm.tpln.focus();
                    return false;
                }
                if(document.ncvfrm.vehicleType.value==""){
                    alert("One vehicle Type must be checked");
                    document.dlfrm.vehicleType.focus();
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
                                <h2 class="title">Addition of New Class of Vehicle</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                            
                                <form name="ncvfrm" action="receive_ncv_request.jsp" method="POST">
                                    <fieldset>
                                        <p><label>Permanent License Number:</label><input type="text" name="tpln" />' /></p>
                                        <p><label>Class of Vehicles to be added:</label></p>
                                        <div style="padding-left: 250px">
                                                <p><input type="checkbox" name="vehicleType" value="Motor Cycle without gear">Motor Cycle without gear</p>
                                                <p><input type="checkbox" name="vehicleType" value="Motor Cycle with gear">Motor Cycle with gear</p>
                                                <p><input type="checkbox" name="vehicleType" value="Invalid Carriages">Invalid Carriages</p>
                                                <p><input type="checkbox" name="vehicleType" value="Light Motor">Light Motor</p>
                                                <p><input type="checkbox" name="vehicleType" value="Medium Goods Vehicle">Medium Goods Vehicle</p>
                                                <p><input type="checkbox" name="vehicleType" value="Medium Passenger motor Vehicle">Medium Passenger motor Vehicle</p>
                                                <p><input type="checkbox" name="vehicleType" value="Heavy Goods Vehicle">Heavy Goods Vehicle</p>
                                                <p><input type="checkbox" name="vehicleType" value="Heavy Passenger Motor Vehicle">Heavy Passenger Motor Vehicle</p>
                                                <p><input type="checkbox" name="vehicleType" value="Road Roller">Road Roller</p>
                                        </div>
                                        <p style="text-decoration: underline"><strong>Documents Required</strong></p>
                                        <div class="box">                                            
                                            <p><label>Medical Certificate:</label><input type="radio" name="mc" value="true" checked="checked" />Yes<input type="radio" name="mc" value="false" />No</p>
                                            <p><label>Driving License:</label><input type="radio" name="dl" value="true" checked="checked" />Yes<input type="radio" name="dl" value="false" />No</p>                                            
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
