<%-- 
    Document   : pre_rr_page
    Created on : 8 Dec, 2012, 7:14:12 PM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Renewal of Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" media="screen" />
    </head>
    <body>
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content" style="width:700px">
            <div class="post1" style="background: none">
                            <h2 class="title">What You Need to Know?</h2>
                            <div class="entry">
                                <p style="font-weight: bold; text-decoration: underline">Information Required before filling the application form for Registration Renewal</p>
                                <p><strong>Documents Required:</strong></p>
                                <ul>
                                    <li>Certificate of Fitness (by Authorized Dealer)</li>
                                    <li>Valid Insurance(attested)</li>
                                    <li>Original Registration Certificate</li>
                                    <li>Engine & chassis pencil print with complete alphabets( Plate print are not acceptable)</li>
                                    <li>Identity proof of owner attested</li>
                                    <li>Attested photograph</li>                                
                                </ul>                                
                                <p><b>Note:</b>You should have to get your vehicle passed by Testing Authority</p>
                                <form name="next_rr_form" action="RegistrationRenewal.jsp" method="post">
                                    <p><label>Click on the button to continue</label></p>
                                    <input class="button" type="submit" value="Continue" >
                                </form>
                            </div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/footer.jsp" />
    </body>
</html>