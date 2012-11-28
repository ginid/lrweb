<%-- 
    Document   : user_home
    Created on : 26 Nov, 2012, 12:51:34 PM
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
        <div id="wrapper">
        <jsp:include page="/WEB-INF/header.jsp" />
        <jsp:include page="/WEB-INF/leftSidebar.jsp" />
        <div id="content">
			<div class="post1">
                            <h2 class="title"><a href="#">Welcome to RTO Management Web Portal</a>				</h2>
                            <div class="entry">
                                <p><strong>RTO Management System</strong> has been designed to automate the process of registration of vehicle and issuing driving license process. System can make the daily activities efficient and providing the fast response to store and retrieve information.</p>
                                <p>Regional Transport Office (RTO) is an Indian government bureau which is responsible for the registration of vehicles and the issue of Driver's Licences in India.</p>
                                <p class="links"><a href="#">Read More</a>&nbsp;|&nbsp;<a href="#">Comments</a></p>
                            </div>
			</div>
			<div class="post">
			  <h2 class="title"><a href="#">Register Vehicle</a></h2>
				<div class="entry">
					<p><strong>What is Vehicle Registration and Why is it Needed?</strong></p>
                                        <p>Vehicle Registration involves the recording of a motor vehicle in the official records after due verification. Vehicle Registration is mandatory under the law and is essential to prove the ownership of a vehicle. It is also required during the sale of a vehicle and transfer of its ownership.</p>
					<p class="links"><a href="#">Read More</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<a href="#">Comments</a></p>
				</div>
			</div>
                        <div class="post">
			  <h2 class="title"><a href="#">Obtain Driving Licence</a></h2>
				<div class="entry">
					<p><strong>What is a Driving Licence and Why is it Necessary?</strong></p>
                                         <p>A Driving Licence is an official document certifying that the holder is suitably qualified to drive a motor vehicle or vehicles. Under the provisions of the Motor Vehicles Act, 1988 (External website that opens in a new window) in India, no person can drive a motor vehicle in any public place unless he holds a valid Driving Licence issued to him, authorising him to drive a vehicle of that particular category.</p>
                                         <p>In India, two kinds of Driving Licenses are issued: Learner's License and Permanent Licence. Learner's Licence is valid only for six months. Permanent Licence can be availed only after the expiry of one month from the date of issuance of the Learner's Licence.</p>
                                         <p class="links"><a href="#">Read More</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="#">Comments</a></p>
				</div>
			</div>
        </div>
	<!-- end #content -->
        <jsp:include page="/WEB-INF/rightSidebar.jsp" />
        <jsp:include page="/WEB-INF/footer.jsp" />
        </div>
    </body>
</html>