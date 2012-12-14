<%-- 
    Document   : receive_dr_request
    Created on : 8 Dec, 2012, 6:07:06 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="drbean" scope="session" class="lrweb.drbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Duplicate Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript">
            function buttonclicked(which)
            {
                if(which==1)
                    {
                        document.dr_request_confirm.action="DuplicateRegistration.jsp"; 
                    }
                    document.dr_request_confirm.submit();
                   
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
                                <form name="dr_request_confirm" action="dr_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="drbean" property="makeOfVehicle" value='<%= request.getParameter("tmv") %>' />
                                        <jsp:setProperty name="drbean" property="circumstances" value='<%= request.getParameter("tc") %>' />
                                        <jsp:setProperty name="drbean" property="circumstancesDeclaration" value='<%= request.getParameter("circumstancesDeclaration") %>' />
                                        <jsp:setProperty name="drbean" property="duplicateRegistrationApply" value='<%= request.getParameter("duplicateRegistrationApply") %>' />
                                        <jsp:setProperty name="drbean" property="policeReportDate" value='<%= request.getParameter("trd") %>' />
                                        <jsp:setProperty name="drbean" property="name" value='<%= request.getParameter("tn") %>' />
                                        <jsp:setProperty name="drbean" property="permanentAddress" value='<%= request.getParameter("tapa") %>' />
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
                                                    <td class="table_labels">Make of Vehicle</td>
                                                    <td><jsp:getProperty name="drbean" property="makeOfVehicle" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Losing Circumstances</td>
                                                    <td><jsp:getProperty name="drbean" property="circumstances" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Circumstances Declaration</td>
                                                    <td><jsp:getProperty name="drbean" property="circumstancesDeclaration" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Duplicate Registration Applying Declaration</td>
                                                    <td><jsp:getProperty name="drbean" property="duplicateRegistrationApply" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Police Report Date</td>
                                                    <td><jsp:getProperty name="drbean" property="policeReportDate" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Name</td>
                                                    <td><jsp:getProperty name="drbean" property="name" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Permanent Address</td>
                                                    <td><jsp:getProperty name="drbean" property="permanentAddress" /></td>
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
