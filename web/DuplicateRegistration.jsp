<%-- 
    Document   : duplicateRegistration
    Created on : 19 Nov, 2012, 12:58:22 PM
    Author     : rishabh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="drbean" scope="session" class="lrweb.drbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>
            function populateFields(){
                    document.drfrm.tmv.value="<jsp:getProperty name="drbean" property="makeOfVehicle" />";
                    document.drfrm.tc.value="<jsp:getProperty name="drbean" property="circumstances" />";
                    document.drfrm.circumstancesDeclaration.checked=true;
                    document.drfrm.duplicateRegistrationApply.checked=true;
                    document.drfrm.trd.value="<jsp:getProperty name="drbean" property="policeReportDate" />";
                    document.drfrm.tn.value="<jsp:getProperty name="drbean" property="name" />";
                    document.drfrm.tapa.value="<jsp:getProperty name="drbean" property="permanentAddress" />";
                      
            }
            function validateForm(){
                if(document.drfrm.tn.value==""){
                    alert("Name Field must not be left empty");
                    document.drfrm.tn.focus();
                    return false;
                }
                if(document.nrfrm.tapa.value==""){
                    alert("Permanent Address Field must not be left empty");
                    document.drfrm.tfn.focus();
                    return false;
                }
                if(document.drfrm.circumstancesDeclaration.checked==false){
                    alert("Circumstances Declaration must be checked");
                    document.drfrm.circumstancesDeclaration.focus();
                    return false;
                }
                if(document.drfrm.duplicateRegistrationApply.checked==false){
                    alert("Duplicate Applying Registration Declaration must be checked");
                    document.drfrm.duplicateRegistrationApply.focus();
                    return false;
                }
                if(document.drfrm.trd.value==""){
                    alert("Police Report Date Field must not be left empty");
                    document.drfrm.trd.focus();
                    return false;
                }
                if(document.drfrm.tc.value==""){
                    alert("Circumstances Field must not be left empty");
                    document.drfrm.tc.focus();
                    return false;
                }
                if(document.drfrm.tmv.value==""){
                    alert("Make of Vehicle must not be left empty");
                    document.drfrm.tmv.focus();
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
                                <h2 class="title">Intimation of loss or Destruction etc. of the Certificate of Registration and Application for the Issue of Duplicate Certificate of Registration</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                            
                                <form name="drfrm" action="receive_dr_request.jsp" method="POST">
                                    <fieldset>
                                        <p><label style="width:400px">Make of Vehicle:</label><input type="text" name="tmv" value="" /></p>
                                        <p><label style="width:400px">Registration Certificate lost/destroyed/completely written of/soiled/torn mutilated in the following circumstances:</label><input type="text" name="tc" value="" /></p>
                                        <p><input type="checkbox" name="circumstancesDeclaration" value="Accepted">I/We hereby declare that to the best of my/our knowledge the registration of vehicle has not been suspended or canceled under the provisions of the Act or Rules made there under and the circumstances explained above are true.</p>
                                        <p><input type="checkbox" name="duplicateRegistrationApply" value="Accepted">I/We do hereby apply for the issue of a duplicate Certificate of Registration</p>
                                        <p><label style="width:400px">I/We have reported the loss to the Police Station on:</label><input type="date" name="trd" /></p>
                                        <p style="text-decoration: underline"><strong>Owner Details</strong></p>
                                        <div class="box">
                                            <p><label style="width:400px">Name</label><input type="text" name="tn" value="" /></p>
                                            <p><label style="width:400px">Permanent Address</label><textarea name="tapa"></textarea></p>
                                        </div>
                                        <input class="button" type="submit" value="Submit" onclick="return validateForm()" /><input class="button" type="reset" value="Clear" />
                                    </fieldset>
                                </form>
                                <%
                               }
                            %>
                            </div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
