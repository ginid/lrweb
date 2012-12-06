<%-- 
    Document   : receive_dl_request
    Created on : 6 Dec, 2012, 8:59:14 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="dlbean" scope="session" class="lrweb.dlbean" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Duplicate License</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
        <script type="text/javascript">
            function buttonclicked(which)
            {
                if(which==1)
                    {
                        document.dl_request_confirm.action="DuplicateLicense.jsp"; 
                    }
                    document.dl_request_confirm.submit();
                   
            }
        </script>
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <%--<jsp:include page="/WEB-INF/leftSidebar.jsp" />--%>
        <div id="content" style="width:90%">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">Duplicate License Request Confirmation</h2>
                            <%}
         
                            %>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="dl_request_confirm" action="dl_request_confirmed.jsp" method="POST">
                                    <fieldset style="border: none">
                                        <!-- Set Bean Properties -->
                                        <jsp:setProperty name="dlbean" property="name" value='<%= request.getParameter("tn") %>' />
                                        <jsp:setProperty name="dlbean" property="fathername" value='<%= request.getParameter("tfn") %>' />
                                        <jsp:setProperty name="dlbean" property="permanentAddress" value='<%= request.getParameter("tapa") %>' />
                                        <jsp:setProperty name="dlbean" property="losingDate" value='<%= request.getParameter("dlo") %>' />
                                        <jsp:setProperty name="dlbean" property="losingCircumstances" value='<%= request.getParameter("tlc") %>' />
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
                                                    <td><jsp:getProperty name="dlbean" property="name" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Father's\Husband's Name</td>
                                                    <td><jsp:getProperty name="dlbean" property="fathername" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Permanent Address:</td>
                                                    <td><jsp:getProperty name="dlbean" property="permanentAddress" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Losing Date</td>
                                                    <td><jsp:getProperty name="dlbean" property="losingDate" /></td>
                                                </tr>
                                                <tr>
                                                    <td class="table_labels">Losing Circumstances</td>
                                                    <td><jsp:getProperty name="dlbean" property="losingCircumstances" /></td>
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
