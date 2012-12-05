<%-- 
    Document   : PermanentLicense
    Created on : 20 Nov, 2012, 12:41:54 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="plbean" scope="session" class="lrweb.plbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>
            
            function populateFields(){
                    document.llfrm.tapa.value="<jsp:getProperty name="plbean" property="permanentAddress" />";
                    document.llfrm.tata.value="<jsp:getProperty name="plbean" property="temporaryAddress" />";
                    //set the bloodgroup combobox to the selected value{start}
                    var x=document.llfrm.sbg;
                    var index;
                    var i;
                    for (i=0;i<x.length;i++)
                    {
                        if(x.options[i].text=="<jsp:getProperty name="plbean" property="bloodgroup" />"){
                            index=i;
                            break;
                        }
                    }
                    document.llfrm.sbg.selectedIndex=index;
                    //end
                    
                }
            
            function validateForm()
                      {
                          if(document.plfrm.tlln.value==""){
                              alert("You must enter the License Number");
                              document.plfrm.tlln.focus();
                              return false;
                          }
                          if(document.plfrm.tn.value=="")
                          {
                            alert("Name should not be left blank");
                            document.plfrm.tn.focus();
                            return false;
                          }
                          if(document.plfrm.tfn.value=="")
                          {
                            alert("Name should not be left blank");
                            document.plfrm.tfn.focus();
                            return false;
                          }
                          if(document.plfrm.dbd.value<"1994-01-01")
                          {
                            alert("Age must be greater than 18 Years");
                            document.plfrm.dbd.focus();
                            return false;
                          }
                          if(document.plfrm.tapa.value=="")
                          {
                            alert("Permanent Address should not be left blank");
                            document.plfrm.tapa.focus();
                            return false;
                          }
                          if(document.plfrm.tata.value=="")
                          {
                            alert("Permanent Address should not be left blank");
                            document.plfrm.tata.focus();
                            return false;
                          }
                          if(document.plfrm.tq.value=="")
                          {
                            alert("Qualification should not be left blank");
                            document.plfrm.tq.focus();
                            return false;
                          }
                          if(document.plfrm.tcn.value.length!=10)
                          {
                            alert("Contact Number should be of ten digits");
                            document.plfrm.tcn.focus();
                            return false;
                          }
                          //E-mail Validation Block{start}
                          var x=document.plfrm.tea.value;
                          var atpos=x.indexOf("@");
                          var dotpos=x.lastIndexOf(".");
                          if(atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
                          {
                            alert("Enter a valid E-mail Address");
                            document.plfrm.tcn.focus();
                            return false;
                          }
                          //E-mail Validation Block{End}
                          if(document.plfrm.tim.value=="")
                          {
                            alert("Identification Mark should not be left blank");
                            document.plfrm.tim.focus();
                            return false;
                          }
                          if(document.plfrm.sbg.value=="none")
                          {
                            alert("A Blood Group should be selected");
                            document.plfrm.tbg.focus();
                            return false;
                          }
                          if(document.plfrm.ddot.value==""){
                              alert("Enter the date of Test");
                              document.plfrm.ddot.focus();
                              return false;
                          }
                          if(doument.plfrm.tta.value==""){
                              alert("You should enter the Testing Authority");
                              document.plfrm.tta.focus();
                              return false;
                          }
                          if(documen.plfrm.trot.value==""){
                              alert("You should enter the result of Test")
                          }                          
                      }    
            
        </script>
    </head>
    <body onload="populateFields()">
        <jsp:include page="/WEB-INF/header.jsp" />
        <div id="content" style="width:90%">
            <div class="post1" style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Permanent License</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                            
                                <form name="plfrm" action="receive_pl_request.jsp" method="POST">
                                    <fieldset>
                                        <p style="margin-top: 10px">I hereby apply for a license to enable me to drive vehicles of the following description:</p>
                                        <div class="checkbox" style="padding-left: 450px">
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
                                        <p><label>Learning License Number:</label><input type="text" name="tlln" value="<jsp:getProperty name="plbean" property="learningLicenseNo" />" /></p>
                                        <p style="text-decoration: underline"><strong>Personal Information</strong></p>
                                        <div class="box">
                                            <p><label>Name:</label><input type="text" name="tn" value="<jsp:getProperty name="plbean" property="name" />" /></p>
                                            <p><label>Father's\Husband's Name:</label><input type="text" name="tfn" value="<jsp:getProperty name="plbean" property="fathername" />" /></p>
                                            <p><label>Birth Date:</label><input type="date" name="dbd" /></p>
                                            <p><label>Permanent Address:</label><textarea name="tapa" rows="4" cols="23"></textarea></p>
                                            <p><label>Temporary Address:</label><textarea name="tata" rows="4" cols="23"></textarea></p>
                                            <p><label>Qualification:</label><input type="text" name="tq" value="<jsp:getProperty name="plbean" property="qualification" />" /></p>
                                            <p><label>Contact Number:</label><input type="text" name="tcn" value="<jsp:getProperty name="plbean" property="contactNumber" />" /></p>
                                            <p><label>Email Address:</label><input type="text" name="tea" value="<jsp:getProperty name="plbean" property="emailAddress" />" /></p>
                                            <p><label>Identification Mark:</label><input type="text" name="tim" value="<jsp:getProperty name="plbean" property="identificationMark" />" /></p>
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
                                        <p style="text-decoration: underline"><strong>Driving Test Information</strong></p>
                                        <div class="box">
                                            <p><label>Date of Test:</label><input type="date" name="ddot" /></p>
                                            <p><label>Testing Authority:</label><input type="text" name="tta" value="<jsp:getProperty name="plbean" property="testingAuthority" />" /></p>
                                            <p><label>Result of Test:</label><input type="text" name="trot" value="<jsp:getProperty name="plbean" property="resultOfTest" />" /></p>
                                        </div>
                                        <p>Have you failed in the driving test Before?<input type="radio" name="drivingTestFailedBefore" value="true"/>Yes<input type="radio" name="drivingTestFailedBefore" value="false" checked="checked"/>No</p>
                                        <p>Learning License given by the RTO?<input type="radio" name="learningLicenseRTO" value="true" checked="checked" />Yes<input type="radio" name="learningLicenseRTO" value="false" />No</p>
                                        <input class="button" type="submit" value="Submit" onSubmit="return validateForm();"/><input class="button" type="reset" value="Clear" />
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