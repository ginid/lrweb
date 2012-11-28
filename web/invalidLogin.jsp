<%-- 
    Document   : invalidLogin
    Created on : 27 Nov, 2012, 10:56:58 AM
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
                <div class="entry">
                    <p style="font-size: 20px">You have entered the wrong Username, Password Combination.</p>
                    <p style="font-size: 20px">Click <a href="home.jsp">Here</a> to try again.</p>
                    
                </div>
            </div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>
