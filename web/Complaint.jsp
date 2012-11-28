<%-- 
    Document   : Complaint
    Created on : 21 Nov, 2012, 9:47:00 AM
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
                <h2 class="title">Complaint Registration Form</h2>
                <div class="entry">
                    <form name="NewComplaint" action="none" method="POST">
                        <fieldset>
                            <p><label>Subject:</label><input type="text" name="ts" value="" /></p>
                            <p><label>Complaint Detail:</label><textarea name="tacd" rows="4" ></textarea></p>
                            <p><label>Inspector Name:</label><input type="text" name="t3" value="" /></p>
                            <p><label>Complainant's Name:</label><input type="text" name="tcon" /></p>
                            <p><label>Address:</label><textarea name="taa" rows="4"></textarea></p>
                            <p><label>Contact Number:</label><input type="text" name="tcn" /></p>
                            <p><label>E-Mail Address:</label><input type="text" name="tea" /></p>
                            <input class="button" type="submit" value="Submit" /><input class="button" type="reset" value="Clear" />
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
