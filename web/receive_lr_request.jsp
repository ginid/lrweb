<%-- 
    Document   : receive_lr_request
    Created on : 6 Dec, 2012, 1:33:43 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="lrbean" scope="session" class="lrweb.lrbean" />
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
                        document.lr_request_confirm.action="LicenseRenewal.jsp"; 
                    }
                    document.lr_request_confirm.submit();
                   
            }
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">License Renewal Request Confirmation</h2>
                            <%}
         
                            %>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="lr_request_confirm" action="lr_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="lrbean" property="name" value='<%= request.getParameter("tn") %>' />
                                        <jsp:setProperty name="lrbean" property="fathername" value='<%= request.getParameter("tfn") %>' />
                                        <jsp:setProperty name="lrbean" property="licenseNumber" value='<%= request.getParameter("tln") %>' />
                                        <jsp:setProperty name="lrbean" property="issueDate" value='<%= request.getParameter("did") %>' />
                                        <jsp:setProperty name="lrbean" property="vehicleType" value='<%= request.getParameter("tcvad") %>' />
                                        <jsp:setProperty name="lrbean" property="presentAddress" value='<%= request.getParameter("tapa") %>' />
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
                                                    <td><jsp:getProperty name="lrbean" property="name" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Father's\Husband's Name</td>
                                                    <td><jsp:getProperty name="lrbean" property="fathername" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">License Number</td>
                                                    <td><jsp:getProperty name="lrbean" property="licenseNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Issue Date</td>
                                                    <td><jsp:getProperty name="lrbean" property="issueDate" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Class of vehicles authorized to be driven</td>
                                                    <td><jsp:getProperty name="lrbean" property="vehicleType" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Present Address</td>
                                                    <td><jsp:getProperty name="lrbean" property="presentAddress" /></td>
                                                </tr>                                                
                                            </tbody>
                                        </table>
                                        <% session.setAttribute("lrbean", lrbean);%>
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
