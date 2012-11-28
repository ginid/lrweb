<%-- 
    Document   : PermanentLicense
    Created on : 20 Nov, 2012, 12:41:54 PM
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
            <div class="post1" style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Permanent License</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                            
                                <form name="PermanentLicense" action="none" method="POST">
                                    <fieldset>
                                        <p><label>Permanent License ID:</label><input type="text" name="tplid" value="" /></p>
                                        <p><label>Permanent License Number:</label><input type="text" name="tpln" value="" /></p>
                                        <p><label>Learning License Number:</label><input type="text" name="tlln" value="" /></p>
                                        <p><label>Application Number:</label><input type="text" name="tan" value="" /></p>
                                        <p style="text-decoration: underline"><strong>Personal Information</strong></p> 
                                        <div class="box">
                                            <p><label>Name:</label><input type="text" name="tn" value="" /></p>
                                            <p><label>Father's Name:</label><input type="text" name="tfn" value="" /></p>
                                            <p><label>Birth Date:</label><input type="text" name="tbd" value="" /></p>
                                            <p><label>Permanent Address:</label><textarea name="tapa" rows="4" cols="23"></textarea></p>
                                            <p><label>Temporary Address:</label><textarea name="tata" rows="4" cols="23"></textarea></p>
                                            <p><label>Educational Qualification:</label><input type="text" name="tq" value="" /></p>
                                            <p><label>Blood Group and RH Factor</label><input type="text" name="tbg" value="" /></p>                                            
                                            <p><label>Identification Mark:</label><input type="text" name="tim" value="" /></p>
                                        </div>                                        
                                        <p><label>Vehicle Type:</label><input type="text" name="tvt" value="" /></p>
                                        <p>Have You given this test before?<input type="radio" name="yes_no1" value="true" checked="checked" />Yes<input type="radio" name="yes_no2" value="false" />No</p>                                        
                                        <p>Have you failed in the driving test Before?<input type="radio" name="yes_no3" value="true" checked="checked" />Yes<input type="radio" name="yes_no4" value="false" />No</p>
                                        <p>Learning License given by the RTO?<input type="radio" name="yes_no5" value="true" checked="checked" />Yes<input type="radio" name="yes_no6" value="false" />No</p>
                                        <p>Guardian Permission Letter Provided or Not?<input type="radio" name="yes_no7" value="true" checked="checked" />Yes<input type="radio" name="yes_no8" value="false" />No</p>
                                        <p>Medical Certificate provided or Not?<input type="radio" name="yes_no9" value="true" checked="checked" />Yes<input type="radio" name="yes_no10" value="false" />No</p>
                                        <p>Fee Paid or Not?<input type="radio" name="yes_no11" value="true" checked="checked" />Yes<input type="radio" name="yes_no12" value="false" />No</p>
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