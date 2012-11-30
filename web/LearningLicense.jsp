<%-- 
    Document   : LearningLicense
    Created on : 19 Nov, 2012, 9:13:34 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="llbean" scope="session" class="lrweb.llbean" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learning License</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>
      
      function validateForm()
            {
                if(document.llfrm.tn.value=="")
                {
                  alert("Name should not be left blank");
                  document.llfrm.tn.focus();
                  return false;
                }
                if(document.llfrm.tfn.value=="")
                {
                  alert("Name should not be left blank");
                  document.llfrm.tfn.focus();
                  return false;
                }
                if(document.llfrm.dbd.value<"01-01-1996")
                {
                  alert("Age must be greater than 16 Years");
                  document.llfrm.dbd.focus();
                  return false;
                }
                if(document.llfrm.tapa.value=="")
                {
                  alert("Permanent Address should not be left blank");
                  document.llfrm.tapa.focus();
                  return false;
                }
                if(document.llfrm.tata.value=="")
                {
                  alert("Permanent Address should not be left blank");
                  document.llfrm.tata.focus();
                  return false;
                }
                if(document.llfrm.tq.value=="")
                {
                  alert("Qualification should not be left blank");
                  document.llfrm.tq.focus();
                  return false;
                }
                if(document.llfrm.tcn.value.length!=10)
                {
                  alert("Contact Number should be of ten digits");
                  document.llfrm.tcn.focus();
                  return false;
                }
                //E-mail Validation Block{start}
                var x=document.llfrm.tea.value;
                var atpos=x.indexOf("@");
                var dotpos=x.lastIndexOf(".");
                if(atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
                {
                  alert("Enter a valid E-mail Address");
                  document.llfrm.tcn.focus();
                  return false;
                }
                //E-mail Validation Block{End}
                if(document.llfrm.tim.value=="")
                {
                  alert("Identification Mark should not be left blank");
                  document.llfrm.tim.focus();
                  return false;
                }
                if(document.llfrm.sbg.value=="none")
                {
                  alert("A Blood Group should be selected");
                  document.llfrm.tbg.focus();
                  return false;
                }
                if(document.llfrm.dmcid.value=="")
                {
                  alert("Medical Certificate issue date should not be left blank");
                  document.llfrm.tim.focus();
                  return false;
                }
                if(document.llfrm.tidn.value=="")
                {
                  alert("Issuing Doctor's Name should not be left blank");
                  document.llfrm.tim.focus();
                  return false;
                }
            }
        </script>
    </head>
    
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
            <div class="post1" style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Learning License Form</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="llfrm" action="receive_ll_request.jsp" method="POST" onsubmit="return validateForm(this);">
                                    <fieldset>
                                        <p style="text-decoration: underline"><strong>Personal Information</strong></p> 
                                        <div class="box">
                                            <p><label>Name:</label><input type="text" name="tn" value="<jsp:getProperty name="llbean" property="name" />" /></p>
                                            <p><label>Father's\Husband's Name:</label><input type="text" name="tfn" value="<jsp:getProperty name="llbean" property="fathername" />" /></p>
                                            <p><label>Birth Date:</label><input type="date" name="dbd" /></p>
                                            <p><label>Permanent Address:</label><textarea name="tapa" rows="4" cols="23"></textarea></p>
                                            <p><label>Temporary Address:</label><textarea name="tata" rows="4" cols="23"></textarea></p>
                                            <p><label>Qualification:</label><input type="text" name="tq" value="<jsp:getProperty name="llbean" property="qualification" />" /></p>
                                            <p><label>Contact Number:</label><input type="text" name="tcn" value="<jsp:getProperty name="llbean" property="contactNumber" />" /></p>
                                            <p><label>Email Address:</label><input type="text" name="tea" value="<jsp:getProperty name="llbean" property="emailAddress" />" /></p>
                                            <p><label>Identification Mark:</label><input type="text" name="tim" value="<jsp:getProperty name="llbean" property="identificationMark" />" /></p>
                                            <p><label>Gender:</label><input type="radio" name="gender" value="Male" checked="checked" />Male<input type="radio" name="gender" value="Female" />Female</p>
                                            <p><label>Blood Group(with RH Factor):</label><select name="sbg">
                                                                                            <option value="none">Choose Your Blood Group</option>
                                                                                            <option value="A+">A+</option>
                                                                                            <option value="A-">A-</option>
                                                                                            <option value="B+">B+</option>
                                                                                            <option value="B-">B-</option>
                                                                                            <option value="AB+">AB+</option>
                                                                                            <option value="AB-">AB-</option>
                                                                                            <option value="O+">O+</option>
                                                                                            <option value="O-">O-</option>
                                                                                          </select>
                                            </p>
                                        </div>
                                            <p><label>Applying for license to drive Vehicle Type:</label><input type="text" name="tvt" value="<jsp:getProperty name="llbean" property="vehicleType" />" /></p>
                                        <p style="text-decoration: underline"><strong>Medical Certificate Information</strong></p>
                                        <div class="box">
                                            <p><label>Medical Certificate issue Date:</label><input type="date" name="dmcid" /></p>
                                            <p><label>Issuing Doctor's Name:</label><input type="text" name="tidn" value="<jsp:getProperty name="llbean" property="issuingDoctorName" />" /></p>
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
                                                                     <option>Life Insurance Policy at least six months old</option>
                                                                     <option>Valid Passport</option>
                                                                     <option>Employer’s certificate in case of Central Govt./State Govt./Local bodies supported by attested copy of Identity Card</option>
                                                                     <option>Certificate granted by registered medical practitioner, not below the rank of civil surgeon, as to the age of  the applicant</option>  
                                                                     </select>
                                        </p>
                                        </div>
                                        <input class="button" type="submit" value="Submit" onSubmit="return validateForm();" /><input class="button" type="reset" value="Clear" />
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
