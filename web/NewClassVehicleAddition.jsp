<%-- 
    Document   : NewClassVehicleAddition
    Created on : 20 Nov, 2012, 11:54:03 AM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Addition of New Class of Vehicle</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                            
                                <form name="NewClassVehicleAddition" action="none" method="POST">
                                    <fieldset>
                                        <p><label>New Class ID:</label><input type="text" name="tncid" value="" /></p>
                                        <p><label>Application Number:</label><input type="text" name="tan" value="" /></p>
                                        <p><label>Permanent License Number:</label><input type="text" name="tpln" value="" /></p>
                                        <p><label>Date of Test:</label><input type="date" name="ddot"></p>
                                        <p><label>Type of Old License:</label><input type="text" name="ttol" value="" /></p>
                                        <p><label>Class of Vehicle to be added:</label><input type="text" name="tncv" value="" /></p>
                                        <p style="text-decoration: underline"><strong>Documents Required</strong></p>
                                        <div class="box">                                            
                                            <p><label>Medical Certificate:</label><input type="radio" name="yes_no1" value="true" checked="checked" />Yes<input type="radio" name="yes_no2" value="false" />No</p>
                                            <p><label>Driving License:</label><input type="radio" name="yes_no3" value="true" checked="checked" />Yes<input type="radio" name="yes_no4" value="false" />No</p>
                                            <p><label>Fee Paid:</label><input type="radio" name="yes_no5" value="true" checked="checked" />Yes<input type="radio" name="yes_no6" value="false" />No</p>                                            
                                        </div>
                                        <p><input type="checkbox" name="agree" value="ON" />I Agree to the Terms And Conditions.</p>
                                        <input class="button" type="submit" value="Submit" /><input class="button" type="reset" value="Clear" />
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
