<%-- 
    Document   : receive_pl_request
    Created on : 3 Dec, 2012, 8:10:53 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="plbean" scope="session" class="lrweb.plbean" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript">
            function buttonclicked(which)
            {
                if(which==1)
                    {
                        document.pl_request_confirm.action="PermanentLicense.jsp";
                    }
                    document.pl_request_confirm.submit();                   
            }
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Permanent License Request Confirmation</h2>
                            <%}
         
                            %>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="pl_request_confirm" action="pl_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="plbean" property="vehicleType" value='<%= request.getParameter("vehicleType") %>' />
                                        <jsp:setProperty name="plbean" property="learningLicenseNo" value='<%= Integer.parseInt(request.getParameter("tlln")) %>' />
                                        <jsp:setProperty name="plbean" property="name" value='<%= request.getParameter("tn") %>' />
                                        <jsp:setProperty name="plbean" property="fathername" value='<%= request.getParameter("tfn") %>' />
                                        <jsp:setProperty name="plbean" property="permanentAddress" value='<%= request.getParameter("tapa") %>' />
                                        <jsp:setProperty name="plbean" property="temporaryAddress" value='<%= request.getParameter("tata") %>' />
                                        <jsp:setProperty name="plbean" property="qualification" value='<%= request.getParameter("tq") %>' />
                                        <jsp:setProperty name="plbean" property="contactNumber" value='<%= request.getParameter("tcn") %>' />
                                        <jsp:setProperty name="plbean" property="emailAddress" value='<%= request.getParameter("tea") %>' />
                                        <jsp:setProperty name="plbean" property="identificationMark" value='<%= request.getParameter("tim") %>' />
                                        <jsp:setProperty name="plbean" property="gender" value='<%= request.getParameter("gender") %>' />
                                        <jsp:setProperty name="plbean" property="bloodgroup" value='<%= request.getParameter("sbg") %>' />
                                        <jsp:setProperty name="plbean" property="dateOfBirth" value='<%= request.getParameter("dbd") %>' />
                                        <jsp:setProperty name="plbean" property="dateOfTest" value='<%= request.getParameter("ddot") %>' />
                                        <jsp:setProperty name="plbean" property="testingAuthority" value='<%= request.getParameter("tta") %>' />
                                        <jsp:setProperty name="plbean" property="resultOfTest" value='<%= request.getParameter("trot") %>' />
                                        <jsp:setProperty name="plbean" property="drivingTestFailedBefore" value='<%= request.getParameter("drivingTestFailedBefore") %>' />
                                        <jsp:setProperty name="plbean" property="learningLicenseRTO" value='<%= request.getParameter("learningLicenseRTO") %>' />
                                        <!-- Tabulate the Contents -->
                                        <table border="1">
                                            <thead>
                                                <tr>
                                                    <th>Field Name</th>
                                                    <th>Field Entry</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="table_labels">Vehicle Type</td>
                                                    <td><jsp:getProperty name="plbean" property="vehicleType" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Learning License Number</td>
                                                    <td><jsp:getProperty name="plbean" property="learningLicenseNo" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Name</td>
                                                    <td><jsp:getProperty name="plbean" property="name" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Father's\Husband's Name</td>
                                                    <td><jsp:getProperty name="plbean" property="fathername" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Birth Date</td>
                                                    <td><jsp:getProperty name="plbean" property="dateOfBirth" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Permanent Address</td>
                                                    <td><jsp:getProperty name="plbean" property="permanentAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Temporary Address</td>
                                                    <td><jsp:getProperty name="plbean" property="temporaryAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Qualification</td>
                                                    <td><jsp:getProperty name="plbean" property="qualification" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Contact Number</td>
                                                    <td><jsp:getProperty name="plbean" property="contactNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">E-mail Address</td>
                                                    <td><jsp:getProperty name="plbean" property="emailAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Identification Mark</td>
                                                    <td><jsp:getProperty name="plbean" property="identificationMark" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Gender</td>
                                                    <td><jsp:getProperty name="plbean" property="gender" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Blood Group</td>
                                                    <td><jsp:getProperty name="plbean" property="bloodgroup" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Date of Test</td>
                                                    <td><jsp:getProperty name="plbean" property="dateOfTest" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Testing Authority</td>
                                                    <td><jsp:getProperty name="plbean" property="testingAuthority" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Result of Test</td>
                                                    <td><jsp:getProperty name="plbean" property="resultOfTest" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Failed the Driving Test Before?</td>
                                                    <td><jsp:getProperty name="plbean" property="drivingTestFailedBefore" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Learning License obtained from RTO</td>
                                                    <td><jsp:getProperty name="plbean" property="learningLicenseRTO" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <input style="margin-left:150px" class="button" type="submit" value="Confirm" /><input style="margin-left:150px" class="button" type="button" value="Edit" name="b1" onclick="buttonclicked(1)" />
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


