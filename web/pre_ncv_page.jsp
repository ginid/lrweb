<%-- 
    Document   : pre_ncv_page
    Created on : 6 Dec, 2012, 10:33:12 PM
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
                                <p style="font-weight: bold; text-decoration: underline">Information Required before filling the application form for New Class of Vehicle Addition in Driving License</p>
                                <p><strong>Documents Required</strong></p>
                                <ul>
                                <li>Medical Certificate issued by a certified Doctor</li>
                                <li>Driving License (Original)</li>
                                </ul>
                                <p><b>Note:</b>You should mention Learning License Number if you have a Learning License</p>
                                <form name="next_ncv_form" action="NewClassVehicleAddition.jsp" method="post">
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