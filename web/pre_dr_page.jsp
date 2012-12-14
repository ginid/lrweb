<%-- 
    Document   : pre_dr_page
    Created on : 8 Dec, 2012, 8:02:43 AM
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
                                <li>Liability Affidavit from owner</li>
                                <li>Signature identification of the Owner (Attested)</li>
                                <li>Photographs(attested)</li>
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
                                <p><b>Note:</b>Documents accepted as proof of Address & Age, supported by Affidavit attested by Public Notary mentioned overleaf. In case of firm/company memorandum and resolution + signature of all partners with partnership deed.</p>
                                <form name="next_dr_form" action="DuplicateRegistration.jsp" method="post">
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