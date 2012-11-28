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
                                            <p><label>Father's\Husband's Name:</label><input type="text" name="tfn" value="" /></p>
                                            <p><label>Birth Date:</label><input type="text" name="tbd" value="" /></p>
                                            <p><label>Permanent Address:</label><textarea name="tapa" rows="4" cols="23"></textarea></p>
                                            <p><label>Temporary Address:</label><textarea name="tata" rows="4" cols="23"></textarea></p>
                                            <p><label>Qualification:</label><input type="text" name="tq" value="" /></p>
                                            <p><label>Contact Number:</label><input type="text" name="tcn" value="" /></p>
                                            <p><label>Email Address:</label><input type="text" name="tea" value="" /></p>
                                            <p><label>Identification Mark:</label><input type="text" name="tim" value="" /></p>
                                            <p><label>Gender:</label><input type="radio" name="gender" value="Male" checked="checked" />Male<input type="radio" name="gender" value="Female" />Female</p>
                                            <p><label>Blood Group(with RH Factor):<input type="text" name="tbg" value="" /></label></p>
                                        </div>
                                        <p><label>Applying for license to drive Vehicle Type:</label><input type="text" name="tvt" value="" /></p>
                                        <p style="text-decoration: underline"><strong>Medical Certificate Information</strong></p>
                                        <div class="box">
                                            <p><label>Medical Certificate issue Date:</label><input type="date" name="dmcid" /></p>
                                            <p><label>Issuing Doctor's Name:</label><input type="text" name="tidn" value="" /></p>
                                        </div>
                                        <p style="text-decoration: underline"><strong>Proof Information</strong></p>
                                        <div class="box">
                                        <p><label>Residence Proof :</label><select name="proofCombo1">
                                                                     <option>Ration Card</option>
                                                                     <option>Voter's Identity Card</option>
                                                                     <option>Certified Copy of Voter List</option>
                                                                     <option>Life Insurance Policy at least six months old with Latest Receipt</option>
                                                                     <option>Valid Passport</option>
                                                                     <option>Employer’s certificate in case of Central Govt./State Govt./Local  bodies supported by attested copy of Identity Card.</option>
                                                                     </select>
                                        </p>
                                        <p><label>Age Proof:</label><select name="proofCombo2">
                                                                     <option>Educational Certificate</option>
                                                                     <option>Birth certificate issued by Registrar Birth and Death showing the name of the applicant</option>
                                                                     <option>Life Insurance Policy at least six months old<option>
                                                                     <option>Valid Passport</option>
                                                                     <option>Employer’s certificate in case of Central Govt./State Govt./Local bodies supported by attested copy of Identity Card</option>
                                                                     <option>Certificate granted by registered medical practitioner, not below the rank of civil surgeon, as to the age of  the applicant</option>  
                                                                     </select>
                                        </p>
                                        </div>
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
