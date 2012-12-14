<%-- 
    Document   : pre_nr_page
    Created on : 7 Dec, 2012, 7:21:04 AM
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
                                <p><strong>Documents Required:</strong></p>
                                <ul>
                                <li>Chassis pencil print & Engine pencil print (plate print not acceptable)</li>
                                <li>Copy of Valid Insurance (attested)</li>
                                <li>Residence Proof (2 Copies - Attested)</li>
                                <li>Date of Birth proof (Attested copy)</li>
                                <li>NOC from ETO in case of vehicle purchased from other state (excise duty)</li>
                                <li>Temporary No is valid for One month only if the vehicle is not got registered within a month liability affidavit is required and if delay is for three months or more. Police Report is required.</li>
                                <li>If special number booked then booking receipt “in original” required with the File.</li>
                                <li>Attested photograph</li>
                                <li>Temporary No. in Original</li>
                                </ul>
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
                                <p><b>Note:</b>Documents accepted as proof of Address & Age, supported by Affidavit attested by Public Notary mentioned overleaf.</p>
                                <form name="next_nr_form" action="NewRegistration.jsp" method="post">
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