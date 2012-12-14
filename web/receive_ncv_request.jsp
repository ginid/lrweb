<%-- 
    Document   : receive_ncv_request
    Created on : 6 Dec, 2012, 10:04:34 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="ncvbean" scope="session" class="lrweb.ncvbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Class of Vehicle Addition</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript">
            function buttonclicked(which)
            {
                if(which==1)
                    {
                        document.ncv_request_confirm.action="NewClassVehicleAddition.jsp"; 
                    }
                    document.ncv_request_confirm.submit();
                   
            }
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">New class of Vehicle Addition Request Confirmation</h2>
                            <%}
         
                            %>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="ncv_request_confirm" action="ncv_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="ncvbean" property="licenseNumber" value='<%= request.getParameter("tpln") %>' />
                                        <%
                                            String[] values=request.getParameterValues("vehicleType");
                                            String slvalue="";
                                            for(int i=0;i<values.length;i++){
                                                if(i==values.length-1){
                                                    slvalue=slvalue+values[i];
                                                }
                                                else{
                                                    slvalue=slvalue+values[i]+", ";
                                                }
                                            }
                                        %>
                                        <jsp:setProperty name="ncvbean" property="vehicleType" value='<%= slvalue %>' />
                                        <jsp:setProperty name="ncvbean" property="mc" value='<%= request.getParameter("mc") %>' />
                                        <jsp:setProperty name="ncvbean" property="dl" value='<%= request.getParameter("dl") %>' />
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
                                                    <td class="table_labels">License Number</td>
                                                    <td><jsp:getProperty name="ncvbean" property="licenseNumber" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Vehicle Types to be added</td>
                                                    <td><jsp:getProperty name="ncvbean" property="vehicleType" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Medical Certificate Provided</td>
                                                    <td><jsp:getProperty name="ncvbean" property="mc" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Driving License Provided</td>
                                                    <td><jsp:getProperty name="ncvbean" property="dl" /></td>
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

