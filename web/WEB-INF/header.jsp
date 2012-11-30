<%-- 
    Document   : header
    Created on : 16 Nov, 2012, 8:23:49 AM
    Author     : rishabh
--%>

<%@page import="lrweb.UserBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <div id="logo">
		<h1>License and Registration</h1>
		<p><em>RTO Management Web Portal</em></p>
	</div>
	<hr />
	<!-- end #logo -->
	<div id="header">
		<div id="menu">
			<ul>
                            <li><% if(session.getAttribute("name")!=null){
                                 out.println("<a href=\"user_home.jsp\">");
                                 }
                                 else{%>
                                 <a href="home.jsp">        
                                 <%}%>
                                 Home</a></li>
				<li><a href="#">License</a>
                                    <ul>
                                                    <li><a href="pre_ll_page.jsp">Learning License</a></li>
                                                    <li><a href="PermanentLicense.jsp">Permanent License</a></li>
                                                    <li><a href="LicenseRenewal.jsp">Renewal of License</a></li>                                                    
                                                    <li><a href="DuplicateLicense.jsp">Duplicate License</a></li>
                                                    <li><a href="NewClassVehicleAddition.jsp">Addition of New Class Vehicle</a></li>
                                    </ul>
                                </li>
                                        
				<li><a href="#">Registration</a><ul>                                           
                                                    <li><a href="NewRegistration.jsp">New Registration</a></li>
                                                    <li><a href="DuplicateRegistration.jsp">Duplicate Registration</a></li>
                                                    <li><a href="RegistrationRenewal.jsp">Registration Renewal</a></li>
                                        </ul></li>
				<li><a href="Complaint.jsp">Complaints</a></li>
                                <li><a href="FAQDL.jsp">FAQs</a></li>
				<li><a href="ContactUs.jsp">Contact Us</a></li>
			</ul>
		</div>
            
		<!-- end #menu -->
                <%
                if(session.getAttribute("name")!=null){
                %><div id="logout">
                    <p style="text-align: right"><%= session.getAttribute("name")%> || <a href="logoutaction.jsp">Logout</a></p>
                </div>
                <%}%>
                
	</div>
        <div id="page">
        <div id="page-bgtop">
	<!-- end #header -->
	<!-- end #header-wrapper -->
