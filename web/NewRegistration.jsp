<%-- 
    Document   : newRegistration
    Created on : 18 Nov, 2012, 5:50:29 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                            <% if((String)session.getAttribute("name")!=null){%>
                                <h2 class="title">New Registration</h2>
                            <%}%>
                            <div class="entry">
                                <% if(session.getAttribute("name")==null){%>
                                <p style="font-size:20px">Access Denied! You are currently not authorized to view this page. Kindly Login and then try again.</p>
                                <%}
                                else{%>
                                <form name="newRegistration" action="none" method="POST">
                                    <fieldset>
                                        <p><label>Name of Vehicle:</label><input type="text" name="t1" value="" /></p>
                                        <p><label>Vehicle Number:</label><input type="text" name="t2" value="" /></p>
                                        <p><label>Engine Number:</label><input type="text" name="t3" value="" /></p>
                                        <p><label>Fuel Type:</label><input type="text" name="t4" value="" /></p>
                                        <p><label>Unladen Weight:</label><input type="text" name="t5" value="" /></p>
                                        <p><label>Manufacturer:</label><input type="text" name="t6" value="" /></p>
                                        <p><label>Year of Manufacture:</label><input type="text" name="t7" value="" /></p>
                                        <p><label>No of Cylinders:</label><input type="text" name="t8" value="" /></p>
                                        <p><label>Seating Capacity:</label><input type="text" name="t9" value="" /></p>
                                        <p><label>Body Type:</label><input type="text" name="t10" value="" /></p>
                                        <p><label>Horsepower(in cc):</label><input type="text" name="t11" value="" /></p>
                                        <input class="button" type="submit" value="Submit" /><input class="button" type="reset" value="Clear" />
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