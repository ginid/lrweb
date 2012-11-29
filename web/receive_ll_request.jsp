<%-- 
    Document   : receive_ll_request
    Created on : 28 Nov, 2012, 9:20:32 PM
    Author     : risihabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="lrweb.*" %>
<!DOCTYPE html>
<jsp:useBean id="llbean" scope="session" class="lrweb.llbean" />
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
                        document.ll_request_confirm.action="LearningLicense.jsp";
                    }
                    document.ll_request_confirm.submit();
                   
            }
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">
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
                                <form name="ll_request_confirm" action="ll_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="llbean" property="name" value='<%= request.getParameter("tn") %>' />
                                        <jsp:setProperty name="llbean" property="fathername" value='<%= request.getParameter("tfn") %>' />
                                        <jsp:setProperty name="llbean" property="permanentAddress" value='<%= request.getParameter("tapa") %>' />
                                        <jsp:setProperty name="llbean" property="temporaryAddress" value='<%= request.getParameter("tata") %>' />
                                        <jsp:setProperty name="llbean" property="qualification" value='<%= request.getParameter("tq") %>' />
                                        <jsp:setProperty name="llbean" property="contactNumber" value='<%= request.getParameter("tcn") %>' />
                                        <jsp:setProperty name="llbean" property="emailAddress" value='<%= request.getParameter("tea") %>' />
                                        <jsp:setProperty name="llbean" property="identificationMark" value='<%= request.getParameter("tim") %>' />
                                        <jsp:setProperty name="llbean" property="gender" value='<%= request.getParameter("gender") %>' />
                                        <jsp:setProperty name="llbean" property="bloodgroup" value='<%= request.getParameter("sbg") %>' />
                                        <jsp:setProperty name="llbean" property="vehicleType" value='<%= request.getParameter("tvt") %>' />
                                        <jsp:setProperty name="llbean" property="medicalCertificateIssueDate" value='<%= request.getParameter("dmcid") %>' />
                                        <jsp:setProperty name="llbean" property="issuingDoctorName" value='<%= request.getParameter("tidn") %>' />
                                        <jsp:setProperty name="llbean" property="residenceProof" value='<%= request.getParameter("proofCombo1") %>'/>
                                        <jsp:setProperty name="llbean" property="ageProof" value='<%= request.getParameter("proofCombo2") %>' />                                       
                                        <jsp:setProperty name="llbean" property="birthdate" value='<%= request.getParameter("dbd") %>' />
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
                                                    <td><jsp:getProperty name="llbean" property="name" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Father's\Husband's Name</td>
                                                    <td><jsp:getProperty name="llbean" property="fathername" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Birth Date</td>
                                                    <td><jsp:getProperty name="llbean" property="birthdate" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Permanent Address</td>
                                                    <td><jsp:getProperty name="llbean" property="permanentAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Temporary Address</td>
                                                    <td><jsp:getProperty name="llbean" property="temporaryAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Qualification</td>
                                                    <td><jsp:getProperty name="llbean" property="qualification" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Contact Number</td>
                                                    <td><jsp:getProperty name="llbean" property="contactNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">E-mail Address</td>
                                                    <td><jsp:getProperty name="llbean" property="emailAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Identification Mark</td>
                                                    <td><jsp:getProperty name="llbean" property="identificationMark" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Gender</td>
                                                    <td><jsp:getProperty name="llbean" property="gender" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Blood Group</td>
                                                    <td><jsp:getProperty name="llbean" property="bloodgroup" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Vehicle Type</td>
                                                    <td><jsp:getProperty name="llbean" property="vehicleType" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Medical Certificate Issue Date</td>
                                                    <td><jsp:getProperty name="llbean" property="medicalCertificateIssueDate" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Issuing Doctor's Name</td>
                                                    <td><jsp:getProperty name="llbean" property="issuingDoctorName" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Residence Proof</td>
                                                    <td><jsp:getProperty name="llbean" property="residenceProof" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Age Proof</td>
                                                    <td><jsp:getProperty name="llbean" property="ageProof" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <% session.setAttribute("llbean", llbean);%>
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
