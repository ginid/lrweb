<%-- 
    Document   : pre_lr_page
    Created on : 6 Dec, 2012, 8:52:07 AM
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
                                <p style="font-weight: bold; text-decoration: underline">Information Required before filling the application form for License Renewal</p>
                                <p><strong>Documents Required</strong></p>
                                <p>You should have a residence proof to fill this form.</p>
                                <p>List of applicable residence proofs:</p>
                                <ul>
                                <li>Ration Card</li>
                                <li>Voter's Identity Card</li>
                                <li>Certified Copy of Voter List</li>
                                <li>Life Insurance Policy at least six months old with Latest Receipt</li>
                                <li>Valid Passport</li>
                                <li>Employer’s certificate in case of Central Government/State Government/Local  bodies supported by attested copy of Identity Card.</li>
                                </ul>
                                <p style="text-decoration: underline">You should also bring a Medical Certificate that has been issued by a recognized Doctor recently</p>
                                <form name="next_lr_form" action="LicenseRenewal.jsp" method="post">
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