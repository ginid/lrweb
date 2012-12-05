<%-- 
    Document   : pre_pl_page
    Created on : 2 Dec, 2012, 9:34:38 PM
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
            <div class="post1" style="background: none">
                            <h2 class="title">What You Need to Know?</h2>
                            <div class="entry">
                                <p style="font-weight: bold; text-decoration: underline">Information Required before filling the application form for Permanent License</p>
                                <p><strong>Documents required:</strong></p>
                                <p>You Need to have <strong>Learning License</strong> duly passed by the motor vehicle inspector or DSP Traffic</p>
                                <p><b>Note:</b>Learner’s License for the issue of Regular License, Duly Passed by the MVI/DSP Traffic are acceptable only before the Date Of Expiry of Learning License.</p>
                                <p><b>Note:</b>You must be of 18 years of age or more</p>
                                <form name="next_pl_form" action="PermanentLicense.jsp" method="post">
                                    <p><label>Click on the button to continue</label></p>
                                    <input style="margin-left: 250px;" type="submit" value="Continue" class="submit">
                                </form>
                            </div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>