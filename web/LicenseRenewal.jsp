<%-- 
    Document   : LicenseRenewal
    Created on : 20 Nov, 2012, 1:19:26 PM
    Author     : rishabh
--%>
<jsp:useBean id="lrbean" scope="session" class="lrweb.lrbean" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License Renewal Form</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script>    
                function populateFields(){
                    document.getElementById('tapa').value="<jsp:getProperty name="lrbean" property="presentAddress" />";                    
                }
                function validateForm()
                      {
                          if(document.getElementById('tn').value=="")
                          {
                            alert("Name should not be left blank");
                            document.getElementById('tn').focus();
                            return false;
                          }
                          if(document.getElementById('tfn').value=="")
                          {
                            alert("Fathers Name should not be left blank");
                            document.getElementById('tfn').focus();
                            return false;
                          }
                          
                          if(document.getElementById('tapa').value=="")
                          {
                            alert("Permanent Address should not be left blank");
                            document.getElementById('tapa').focus();
                            return false;
                          }
                          if(document.getElementById('tln').value=="")
                              {
                                  alert("License Number must be entered");
                                  document.getElementById('tln').focus();
                                  return false;
                              }
                          if(document.getElementById('did').value=="")
                          {
                            alert("License Issue Date should not be left blank");
                            document.getElementById('did').focus();
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
                                <h2 class="title">License Renewal</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="RegistrationRenewal" action="receive_lr_request.jsp" method="POST">
                                      <fieldset>
                                          <p><label for="tn">Name:</label><input type="text" id="tn" name="tn" value="<jsp:getProperty name="lrbean" property="name" />" /></p>
                                          <p><label for="tfn">Father's \ Husband's Name:</label><input type="text" id="tfn" name="tfn" value="<jsp:getProperty name="lrbean" property="fathername" />" /></p>
                                          <p style="text-decoration: underline"><strong>Driving License Details</strong></p>
                                          <div class="box">
                                              <p><label for="tln">License Number:</label><input type="text" id="tln" name="tln" value='<jsp:getProperty name="lrbean" property="licenseNumber" />' /></p>
                                              <p><label for="did">Issue Date:</label><input type="date" id="did" name="did"/></p>
                                              <p><label for="tcvad">Class of vehicles authorized to be driven:</label><input type="text" id="tcvad" name="tcvad" value='<jsp:getProperty name="lrbean" property="vehicleType" />' /></p>                                              
                                          </div>
                                          <p><label for="tapa">Present Address:</label><textarea id="tapa" name="tapa"></textarea></p>                                        
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

