<%-- 
    Document   : pre_ll_page
    Created on : 30 Nov, 2012, 2:56:34 PM
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
                                <p style="font-weight: bold; text-decoration: underline">Information Required before filling the application form for Learning License</p>
                                <p>First You Need to have two proofs: One as a residence proof other one as a age proof</p>
                                <p>List of applicable residence proofs:</p>
                                <ul>
                                <li>Ration Card</li>
                                <li>Voter's Identity Card</li>
                                <li>Certified Copy of Voter List</li>
                                <li>Life Insurance Policy at least six months old with Latest Receipt</li>
                                <li>Valid Passport</li>
                                <li>Employer’s certificate in case of Central Govt./State Govt./Local  bodies supported by attested copy of Identity Card.</li>
                                </ul>
                                <p>List of applicable age proofs:</p>
                                <ul>
                                <li>Educational Certificate</li>
                                <li>Birth certificate issued by Registrar Birth and Death showing the name of the applicant</li>
                                <li>Life Insurance Policy at least six months old</li>
                                <li>Valid Passport</li>
                                <li>Employer’s certificate in case of Central Govt./State Govt./Local bodies supported by attested copy of Identity Card</li>
                                <li>Certificate granted by registered medical practitioner, not below the rank of civil surgeon, as to the age of  the applicant</li>  
                                </ul>
                                <p><b>Note:</b>You must be of 16 years of age or more</p>
                                <p><b>Note:</b>You should have a medical certificate issued by a doctor</p>
                                <form name="next_ll_form" action="LearningLicense.jsp" method="post">
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