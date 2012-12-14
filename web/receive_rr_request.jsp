<%-- 
    Document   : receive_rr_request
    Created on : 8 Dec, 2012, 9:05:12 PM
    Author     : rishabh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="lrweb.*" %>
<!DOCTYPE html>
<jsp:useBean id="rrbean" scope="session" class="lrweb.rrbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Renewal</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript">
            function buttonclicked(which)
            {
                if(which==1)
                    {
                        document.rr_request_confirm.action="RegistrationRenewal.jsp"; 
                    }
                    document.rr_request_confirm.submit();
                   
            }
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Registration Renewal Request Confirmation</h2>
                            <%}
         
                            %>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="rr_request_confirm" action="rr_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="rrbean" property="name" value='<%= request.getParameter("tn") %>' />
                                        <jsp:setProperty name="rrbean" property="registrationNumber" value='<%= request.getParameter("trn") %>' />
                                        <jsp:setProperty name="rrbean" property="dateOfIssue" value='<%= request.getParameter("ddi") %>' />
                                        <jsp:setProperty name="rrbean" property="dateOfExpiry" value='<%= request.getParameter("dde") %>' />
                                        <jsp:setProperty name="rrbean" property="presentAddress" value='<%= request.getParameter("tapa") %>' />
                                        <jsp:setProperty name="rrbean" property="classOfVehicle" value='<%= request.getParameter("tcv") %>' />                                        
                                        <jsp:setProperty name="rrbean" property="vehicleType" value='<%= request.getParameter("svt") %>' />
                                        <jsp:setProperty name="rrbean" property="typeOfBody" value='<%= request.getParameter("ttb") %>' />
                                        <jsp:setProperty name="rrbean" property="makersName" value='<%= request.getParameter("tmn") %>' />
                                        <jsp:setProperty name="rrbean" property="yearOfManufacture" value='<%= request.getParameter("tym") %>' />    
                                        <jsp:setProperty name="rrbean" property="noOfCylinders" value='<%= request.getParameter("tnc") %>' />    
                                        <jsp:setProperty name="rrbean" property="cubicCapacity" value='<%= request.getParameter("tcc") %>' />    
                                        <jsp:setProperty name="rrbean" property="makersClassification" value='<%= request.getParameter("tmc") %>' />    
                                        <jsp:setProperty name="rrbean" property="engineNumber" value='<%= request.getParameter("ten") %>' />    
                                        <jsp:setProperty name="rrbean" property="seatingCapacity" value='<%= request.getParameter("tsc") %>' />
                                        <jsp:setProperty name="rrbean" property="unladenWeight" value='<%= request.getParameter("tuw") %>' />                
                                        <jsp:setProperty name="rrbean" property="fuelUsed" value='<%= request.getParameter("tfu") %>' />
                                        
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
                                                    <td class="table_labels">Name</td>
                                                    <td><jsp:getProperty name="rrbean" property="name" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Registration Number</td>
                                                    <td><jsp:getProperty name="rrbean" property="registrationNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Date of Issue</td>
                                                    <td><jsp:getProperty name="rrbean" property="dateOfIssue" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Date of Expiry</td>
                                                    <td><jsp:getProperty name="rrbean" property="dateOfExpiry" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Present Address</td>
                                                    <td><jsp:getProperty name="rrbean" property="presentAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Class of Vehicle</td>
                                                    <td><jsp:getProperty name="rrbean" property="classOfVehicle" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Vehicle Type</td>
                                                    <td><jsp:getProperty name="rrbean" property="vehicleType" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Type of Body</td>
                                                    <td><jsp:getProperty name="rrbean" property="typeOfBody" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Maker's Name</td>
                                                    <td><jsp:getProperty name="rrbean" property="makersName" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Year of Manufacture</td>
                                                    <td><jsp:getProperty name="rrbean" property="yearOfManufacture" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">No of Cylinders</td>
                                                    <td><jsp:getProperty name="rrbean" property="noOfCylinders" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Cubic Capacity</td>
                                                    <td><jsp:getProperty name="rrbean" property="cubicCapacity" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Maker's Classification</td>
                                                    <td><jsp:getProperty name="rrbean" property="makersClassification" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Engine Number</td>
                                                    <td><jsp:getProperty name="rrbean" property="engineNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Seating Capacity</td>
                                                    <td><jsp:getProperty name="rrbean" property="seatingCapacity" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Unladen Weight</td>
                                                    <td><jsp:getProperty name="rrbean" property="unladenWeight" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Fuel Used</td>
                                                    <td><jsp:getProperty name="rrbean" property="fuelUsed" /></td>
                                                </tr>                                                
                                            </tbody>
                                        </table>                                        
                                        <input class="button" type="submit" value="Confirm" /><input class="button" type="button" value="Edit" name="b1" onclick="buttonclicked(1)" />
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
