<%-- 
    Document   : receive_nr_request
    Created on : 7 Dec, 2012, 9:25:50 AM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="lrweb.*" %>
<!DOCTYPE html>
<jsp:useBean id="nrbean" scope="session" class="lrweb.nrbean" />
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
                        document.nr_request_confirm.action="NewRegistration.jsp"; 
                    }
                    document.nr_request_confirm.submit();
                   
            }
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Learning License Request Confirmation</h2>
                            <%}
         
                            %>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="nr_request_confirm" action="nr_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="nrbean" property="name" value='<%= request.getParameter("tn") %>' />
                                        <jsp:setProperty name="nrbean" property="fatherName" value='<%= request.getParameter("tfn") %>' />
                                        <jsp:setProperty name="nrbean" property="age" value='<%= request.getParameter("ta") %>' />
                                        <jsp:setProperty name="nrbean" property="permanentAddress" value='<%= request.getParameter("tapa") %>' />
                                        <jsp:setProperty name="nrbean" property="temporaryAddress" value='<%= request.getParameter("tata") %>' />
                                        <jsp:setProperty name="nrbean" property="nameOfVehicle" value='<%= request.getParameter("tnv") %>' />
                                        <jsp:setProperty name="nrbean" property="vehicleNumber" value='<%= request.getParameter("tvn") %>' />
                                        <jsp:setProperty name="nrbean" property="fuelType" value='<%= request.getParameter("tft") %>' />
                                        <jsp:setProperty name="nrbean" property="engineNumber" value='<%= request.getParameter("ten") %>' />
                                        <jsp:setProperty name="nrbean" property="unladenWeight" value='<%= request.getParameter("tuw") %>' />
                                        <jsp:setProperty name="nrbean" property="manufacturerName" value='<%= request.getParameter("tmn") %>' />
                                        <jsp:setProperty name="nrbean" property="yearOfManufacture" value='<%= request.getParameter("tym") %>' />
                                        <jsp:setProperty name="nrbean" property="noOfCylinders" value='<%= request.getParameter("tnc") %>' />
                                        <jsp:setProperty name="nrbean" property="seatingCapacity" value='<%= request.getParameter("tsc") %>' />
                                        <jsp:setProperty name="nrbean" property="bodyType" value='<%= request.getParameter("tbt") %>' />
                                        <jsp:setProperty name="nrbean" property="horsepower" value='<%= request.getParameter("thp") %>' />
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
                                                    <td><jsp:getProperty name="nrbean" property="name" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Father's\Husband's Name</td>
                                                    <td><jsp:getProperty name="nrbean" property="fatherName" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Age</td>
                                                    <td><jsp:getProperty name="nrbean" property="age" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Permanent Address</td>
                                                    <td><jsp:getProperty name="nrbean" property="permanentAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Temporary Address</td>
                                                    <td><jsp:getProperty name="nrbean" property="temporaryAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Name of Vehicle</td>
                                                    <td><jsp:getProperty name="nrbean" property="nameOfVehicle" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Vehicle Number</td>
                                                    <td><jsp:getProperty name="nrbean" property="vehicleNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Engine Number</td>
                                                    <td><jsp:getProperty name="nrbean" property="engineNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Fuel Type</td>
                                                    <td><jsp:getProperty name="nrbean" property="fuelType" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Unladen Weight</td>
                                                    <td><jsp:getProperty name="nrbean" property="unladenWeight" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Manufacturer's Name</td>
                                                    <td><jsp:getProperty name="nrbean" property="manufacturerName" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Year of Manufacture</td>
                                                    <td><jsp:getProperty name="nrbean" property="yearOfManufacture" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Number of Cylinders</td>
                                                    <td><jsp:getProperty name="nrbean" property="noOfCylinders" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Seating Capacity</td>
                                                    <td><jsp:getProperty name="nrbean" property="seatingCapacity" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Body Type</td>
                                                    <td><jsp:getProperty name="nrbean" property="bodyType" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Horse Power</td>
                                                    <td><jsp:getProperty name="nrbean" property="horsepower" /></td>
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
