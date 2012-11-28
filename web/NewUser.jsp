<%-- 
    Document   : NewUser
    Created on : 22 Nov, 2012, 12:06:24 PM
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
                <h2 class="title">New User Registration</h2>
                <div class="entry">
                    <form name="NewUser" action="receive_user.jsp" method="POST">
                        <fieldset>
                            <p><label>Name:</label><input type="text" name="tn" value="" /></p>
                            <p><label>Date of Birth:</label><input type="date" name="ddob" /></p>
                            <p><label>Email Address:</label><input type="text" name="tea" value="" /></p>
                            <p><label>Username:</label><input type="text" name="tun" /></p>
                            <p><label>Password:</label><input type="password" name="tp" /></p>
                            <p><label>Confirm Password:</label><input type="password" name="tcp"></p>
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