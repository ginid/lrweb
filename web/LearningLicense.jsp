<%-- 
    Document   : LearningLicense
    Created on : 19 Nov, 2012, 9:13:34 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learning License</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">
            <div class="post1" style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Learning License Form</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="LearningLicense" action="none" method="POST">
                                    <fieldset>
                                        <p style="text-decoration: underline"><strong>Personal Information</strong></p> 
                                        <div class="box">
                                            <p><label>Name:</label><input type="text" name="tn" value="" /></p>
                                            <p><label>Father's Name:</label><input type="text" name="tfn" value="" /></p>
                                            <p><label>Birth Date:</label><input type="text" name="tbd" value="" /></p>
                                            <p><label>Permanent Address:</label><textarea name="tapa" rows="4" cols="23"></textarea></p>
                                            <p><label>Temporary Address:</label><textarea name="tata" rows="4" cols="23"></textarea></p>
                                            <p><label>Qualification:</label><input type="text" name="tq" value="" /></p>
                                            <p><label>Contact Number:</label><input type="text" name="tcn" value="" /></p>
                                            <p><label>Email Address:</label><input type="text" name="tea" value="" /></p>
                                            <p><label>Identification Mark:</label><input type="text" name="tim" value="" /></p>
                                        </div>
                                        <p><label>Gender:</label><input type="radio" name="gender" value="Male" checked="checked" />Male<input type="radio" name="gender" value="Female" />Female</p>
                                        <p><label>Vehicle Type:</label><input type="text" name="tvt" value="" /></p>
                                        <p><label>ID Proof:</label><input type="text" name="tidp" value="" /></p>
                                        <p><label>Proof Type:</label><select name="ProofCombo">
                                                                     <option>Birth Certificate</option>
                                                                     <option>Electricity Bill</option>
                                                                     <option>Ration Card</option>
                                                                     <option>Telephone Bill</option>  
                                                                     </select></p>
                                        <p><input type="checkbox" name="agree" value="ON" />I Agree to the Terms And Conditions.</p>
                                        <input class="button" type="submit" value="Submit" /><input class="button" type="reset" value="Clear" />
                                    </fieldset>
                                </form>
                                <% } %>
                            </div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
