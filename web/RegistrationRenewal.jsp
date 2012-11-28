<%-- 
    Document   : RegistrationRenewal
    Created on : 20 Nov, 2012, 12:02:22 PM
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
                                <h2 class="title">Registration Renewal</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="RegistrationRenewal" action="none" method="POST">
                                    <fieldset>
                                        <p><label>Renewal ID:</label><input type="text" name="trid" value="" /></p>
                                        <p><label>Date:</label><input type="date" name="dd"></p>
                                        <p><label>Registration Number:</label><input type="text" name="trn" value="" /></p>
                                        <p><label>Inspector Name:</label><input type="text" name="tin" value="" /></p>
                                        <p><label>Class of Vehicle to be driven:</label><input type="text" name="tcvd" value="" /></p>
                                        <p><label>Registration Valid Upto:</label><input type="date" name="drvu" /></p>
                                        <p style="text-decoration: underline"><strong>Documents Required</strong></p>
                                        <div class="box">
                                            <p><label>Registration Certificate:</label><input type="radio" name="yes_no1" value="true" checked="checked" />Yes<input type="radio" name="yes_no2" value="false" />No</p>
                                            <p><label>Insurance Certificate:</label><input type="radio" name="yes_no3" value="true" checked="checked" />Yes<input type="radio" name="yes_no4" value="false" />No</p>
                                            <p><label>PUC Certificate:</label><input type="radio" name="yes_no5" value="true" checked="checked" />Yes<input type="radio" name="yes_no6" value="false" />No</p>
                                            <p><label>Fee Paid:</label><input type="radio" name="yes_no7" value="true" checked="checked" />Yes<input type="radio" name="yes_no8" value="false" />No</p>
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
