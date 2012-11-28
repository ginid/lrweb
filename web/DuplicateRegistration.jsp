<%-- 
    Document   : duplicateRegistration
    Created on : 19 Nov, 2012, 12:58:22 PM
    Author     : rishabh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>License and Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">
			<div class="post1"  style="background: none">
                            <% if((String)session.getAttribute("user")!=null){%>
                                <h2 class="title">Duplicate Registration Form</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("user")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                            
                                <form name="DuplicateRegistration" action="none" method="POST">
                                    <fieldset>
                                        <p><label>Police Station Name:</label><input type="text" name="t1" value="" /></p>
                                        <p><label>Police Report Date:</label><input type="text" name="t2" value="" /></p>
                                        <p><label>Inspector Name:</label><input type="text" name="t3" value="" /></p>
                                        <p><label>FIR Copy:</label><input type="file" name="file1"></p>
                                        <p style="text-decoration: underline"><strong>Fee Structure</strong></p> 
                                        <div class="box">
                                            <p><label>Demand Draft No.</label><input type="text" name="t4" value="" /></p>
                                            <p><label>Demand Draft Scan Copy</label><input type="file" name="file2" /></p>
                                        </div>
                                        <p><input type="checkbox" name="agree" value="ON" />I Agree to the Terms And Conditions.</p>
                                        <input class="button" type="submit" value="Submit" /><input class="button" type="reset" value="Clear" />
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
