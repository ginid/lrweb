<%-- 
    Document   : leftSidebar
    Created on : 16 Nov, 2012, 8:26:42 AM
    Author     : rishabh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="sidebar">
			<ul>
                            <% if(session.getAttribute("name")!=null&&session.getAttribute("userType").equals("user")){%>
                                <li>    
                                    <h2>Latest News</h2>
					<ul>
						    <li><a href="">New Options available</a></li>
                                                    <li><a href="">New Site Map announced</a></li>
                                                    <li><a href="">Important announcement regarding new users</a></li>
					</ul>
				</li>
                            <% }
                               else if(session.getAttribute("name")!=null&&session.getAttribute("userType").equals("admin")){%>
                                   
                               <%}
                               else{%>
                               <li>
					<h2>Navigation</h2>
					<ul>
						<li class="Headers">Registration
                                                <ul>
                                                    <li><a href="NewRegistration.jsp">New Registration</a></li>
                                                    <li><a href="DuplicateRegistration.jsp">Duplicate Registration</a></li>
                                                    <li><a href="RegistrationRenewal.jsp">Registration Renewal</a></li>
                                                </ul>
                                                </li>    
						<li class="Headers">License
                                                <ul>
                                                    <li><a href="LearningLicense.jsp">Learning License</a></li>
                                                    <li><a href="PermanentLicense.jsp">Permanent License</a></li>
                                                    <li><a href="LicenseRenewal.jsp">Renewal of License</a></li>                                                    
                                                    <li><a href="DuplicateLicense.jsp">Duplicate License</a></li>
                                                    <li><a href="NewClassVehicleAddition.jsp">Addition of New Class Vehicle</a></li>
                                                </ul>
                                                </li>
						
                                                </li>
					</ul>
				</li>
                               <%}                            
                            %>
                                
			</ul>
</div>
<!-- end #sidebar -->